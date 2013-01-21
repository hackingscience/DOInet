class Publication < ActiveRecord::Base
  attr_accessible :cites, :doi

  # TODO: normalize DOIs in doi and cites fields so that you can't game the system by taking advantage of diff forms
  validate :doi_and_cites_must_be_different
  validates :doi, :cites, :format => { :with => %r{\b(10[.][0-9]{4,}(?:[.][0-9]+)*/(?:(?!["&\'<>])[[:graph:]])+)\b}, :message => "each doi/cites must be valid DOIs" }
  validates :doi, :presence => true, :uniqueness => { :case_sensitive => false, :scope => :cites, :message => "each doi/cites row must be a unique combination" }

  def doi_and_cites_must_be_different
    errors.add(:doi, "cannot cite itself") if doi == cites
  end
end

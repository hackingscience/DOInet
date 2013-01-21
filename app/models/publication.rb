class Publication < ActiveRecord::Base
  attr_accessible :doi, :title
  has_many :citations, foreign_key: "citer_id", dependent: :destroy
  before_save :normalize_doi
  validates :doi, :format => { :with => Rails.application.config.doi_regex, :message => "DOI must have valid format" }

  def normalize_doi
    return unless new_record?
    self.doi = "http://dx.doi.org/#{Rails.application.config.doi_regex.match(self.doi)[0]}"
  end

  def cites
    Citation.find_all_by_citer_id(self.id).map do |c|
      Publication.find(c.cited_id)
    end
  end

  def cited_by
    Citation.find_all_by_cited_id(self.id).map do |c|
      Publication.find(c.citer_id)
    end
  end
end

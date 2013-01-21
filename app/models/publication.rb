class Publication < ActiveRecord::Base
  attr_accessible :doi, :title
  has_many :citations, foreign_key: "citer_id", dependent: :destroy

  validates :doi, :format => { :with => %r{\b(10[.][0-9]{4,}(?:[.][0-9]+)*/(?:(?!["&\'<>])[[:graph:]])+)\b}, :message => "DOI must have valid format" } #"

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

class Publication < ActiveRecord::Base
  attr_accessible :doi, :title
  has_many :citations, foreign_key: "citer_id", dependent: :destroy

  validates :doi, :format => { :with => %r{\b(10[.][0-9]{4,}(?:[.][0-9]+)*/(?:(?!["&\'<>])[[:graph:]])+)\b}, :message => "DOI must have valid format" } #"
end

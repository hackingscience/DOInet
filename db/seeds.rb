# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DOIs = ['doi:10.1000/foo',
        'doi:10.1000/bar',
        'doi:10.1000/baz',
        'doi:10.1000/quux',
        'doi:10.1000/quuz']

def random_doi
  "doi:10.#{Random.new.rand(1000..9999)}/article"
end

DOIs.each do |doi|
  20.times do
    Publication.create(doi: doi, cites: random_doi)
  end
end

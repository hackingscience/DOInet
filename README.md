DOInet
======

DOInet is a user generated graph of DOIs (Digital object identifiers).

Digital object identifiers are ids that uniquely identify scientific articles. DOINet's goal is to provide a graph of DOIs, so that
for every article represented by a DOI, it shows the DOIs of the articles that are being cited, and that cite that article. Currently, this
information is not openly available in a single public repository.

The citation relationships of DOIs (the DOI graph) can serve as a basis for various tools that can be built off of DOInet.

## Install

Infrastructural components

 * Ruby 1.9.3 (some of us use RVM to manage our Rubies)
 * A relational database (SQLite is default)

Get the DOInet code

    git clone https://github.com/hackingscience/DOInet.git

Install gems

    bundle install

Create database

    rake db:create

Migrate database

    rake db:migrate

(OPTIONAL) Load seed data

    rake db:seed

Run the app server (the bundled app server is Unicorn)

    rails server

Browse to http://localhost:3000/ and you will see DOInet.

## Contribute

1. Fork the codebase e.g. to https://github.com/your-username/DOInet
1. Clone your fork locally (`git clone
git@github.com:your-username/DOInet.git my-doinet`)
1. Create a branch to hold your changes (`git checkout -b new-feature`)
1. Commit the changes you've made (`git commit -am "Some descriptive text around
what you've added"`)
1. Push your branch to github (`git push origin new-feature`)
1. Create a pull request e.g. at https://github.com/your-username/DOInet/pull/new/master

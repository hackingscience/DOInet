DOInet
======

Network of DOIs Rails app.  Make this description better, Marcel.﻿# ScholarSphere

## Install

Infrastructural components

 * Ruby 1.9.3 (we use RVM to manage our Rubies)
 * A relational database (SQLite and MySQL have been tested)
 * Redis (for activity streams and background jobs)

Get the ScholarSphere code

    git clone https://github.com/hackingscience/DOInet.git

Install gems

    bundle install

Copy config samples

    cp config/database.yml.sample config/database.yml

If you're using SQLite, you should not need to tweak the database.yml file.

If you're using MySQL, create the database in MySQL.

Create database

    rake db:create

Migrate database

    rake db:migrate
    rake db:test:prepare

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

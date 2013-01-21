# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130121215438) do

  create_table "citations", :force => true do |t|
    t.integer  "citer_id"
    t.integer  "cited_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "citations", ["cited_id"], :name => "index_citations_on_cited_id"
  add_index "citations", ["citer_id", "cited_id"], :name => "index_citations_on_citer_id_and_cited_id", :unique => true
  add_index "citations", ["citer_id"], :name => "index_citations_on_citer_id"

  create_table "publications", :force => true do |t|
    t.string   "doi"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
  end

end

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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150426040325) do

  create_table "beliefs", force: :cascade do |t|
    t.string   "title"
    t.text     "summary"
    t.text     "explanation"
    t.integer  "score"
    t.boolean  "local",       default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "beliefs", ["local"], name: "index_beliefs_on_local"
  add_index "beliefs", ["score"], name: "index_beliefs_on_score"

  create_table "issues", force: :cascade do |t|
    t.string   "name"
    t.text     "summary"
    t.integer  "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "issues", ["score"], name: "index_issues_on_score"

  create_table "resources", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "url"
    t.boolean  "published"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "resources", ["published"], name: "index_resources_on_published"

end

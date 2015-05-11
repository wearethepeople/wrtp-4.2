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

ActiveRecord::Schema.define(version: 20150511220007) do

  create_table "beliefs", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "summary",     limit: 65535
    t.text     "explanation", limit: 65535
    t.integer  "score",       limit: 4
    t.boolean  "local",       limit: 1,     default: false
    t.integer  "issue_id",    limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "beliefs", ["issue_id"], name: "index_beliefs_on_issue_id", using: :btree
  add_index "beliefs", ["local"], name: "index_beliefs_on_local", using: :btree
  add_index "beliefs", ["score"], name: "index_beliefs_on_score", using: :btree

  create_table "issues", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "summary",    limit: 65535
    t.integer  "score",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "issues", ["score"], name: "index_issues_on_score", using: :btree

  create_table "resources", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "url",         limit: 255
    t.boolean  "published",   limit: 1
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "resources", ["published"], name: "index_resources_on_published", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",               limit: 255,              null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

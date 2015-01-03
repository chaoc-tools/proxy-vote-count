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

ActiveRecord::Schema.define(version: 20150103230256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annual_meetings", force: true do |t|
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buildings", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "campus"
  end

  create_table "my_collected_votes", force: true do |t|
    t.integer  "votes_collected"
    t.integer  "building_id"
    t.integer  "user_id"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proxy_votes", force: true do |t|
    t.integer  "count"
    t.integer  "building_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total_count"
    t.integer  "building_count"
    t.integer  "building_user_count"
  end

  add_index "proxy_votes", ["building_id"], name: "index_proxy_votes_on_building_id", using: :btree

  create_table "shareholder_confirmations", force: true do |t|
    t.string   "sh_firstname"
    t.string   "sh_mi"
    t.string   "sh_last_name"
    t.integer  "sh_bldg"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.boolean  "is_shareholder"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "last_name"
    t.string   "nickname"
    t.integer  "building_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "email"
  end

  add_index "users", ["building_id"], name: "index_users_on_building_id", using: :btree

end

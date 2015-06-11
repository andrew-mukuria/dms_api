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

ActiveRecord::Schema.define(version: 20150609191753) do

  create_table "api_keys", force: :cascade do |t|
    t.string   "access_token",             limit: 255
    t.string   "user_id",                  limit: 45
   #t.datetime "expires_at",               null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "archdioceses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deaneries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dioceses", force: :cascade do |t|
    t.string   "name",       limit: 45
    t.string   "in_charge",  limit: 45
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "name",       limit: 45
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parishes", force: :cascade do |t|
    t.text     "name",       limit: 65535
    t.text     "in_charge",  limit: 65535
    t.string   "location",   limit: 45
    t.datetime "updated_at",               null: false
    t.datetime "created_at",               null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",       limit: 45
    t.text     "content",    limit: 65535
    t.text     "tags",       limit: 65535
    t.datetime "date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "parish_id",  limit: 4,     null: false
  end

  add_index "services", ["parish_id"], name: "parish_idx", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "services", "parishes", name: "parish"
end

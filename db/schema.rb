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

ActiveRecord::Schema.define(version: 20170212185610) do

  create_table "countries", force: :cascade do |t|
    t.integer  "country_code",      null: false
    t.integer  "panel_provider_id", null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "location_groups", force: :cascade do |t|
    t.string   "name",              null: false
    t.integer  "country_id",        null: false
    t.integer  "panel_provider_id", null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "location_groups", ["country_id"], name: "index_location_groups_on_country_id"

  create_table "locations", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "external_id", null: false
    t.string   "secret_code", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "panel_providers", force: :cascade do |t|
    t.integer  "code",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "target_groups", force: :cascade do |t|
    t.string   "name",              null: false
    t.integer  "parent_id"
    t.integer  "panel_provider_id", null: false
    t.string   "external_id",       null: false
    t.string   "secret_code",       null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "target_groups", ["parent_id"], name: "index_target_groups_on_parent_id"

end

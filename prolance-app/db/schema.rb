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

ActiveRecord::Schema.define(version: 20160312183837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_service_cities", force: :cascade do |t|
    t.string   "city_airport_code"
    t.string   "city_name"
    t.string   "state_code"
    t.string   "state_name"
    t.string   "country"
    t.string   "start_pin_code"
    t.string   "end_pin_code"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "admin_services", force: :cascade do |t|
    t.string   "service_code"
    t.string   "service_name"
    t.string   "service_category_code"
    t.string   "service_desc"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "service_requests", force: :cascade do |t|
    t.integer  "service_city_id"
    t.integer  "service_id"
    t.string   "service_detail"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "service_requests", ["service_city_id"], name: "index_request_city", using: :btree
  add_index "service_requests", ["service_id"], name: "index_request_service", using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "service_name"
    t.string   "service_description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "password_digest"
    t.string   "email_id"
    t.decimal  "phone_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end

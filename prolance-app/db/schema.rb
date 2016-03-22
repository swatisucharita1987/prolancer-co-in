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

ActiveRecord::Schema.define(version: 20160319055331) do

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

  create_table "partner_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "admin_service_city_id"
    t.string   "driving_licence_number"
    t.string   "driving_license_state"
    t.string   "pan_number"
    t.string   "adhaar_number"
    t.string   "passport_number"
    t.string   "passport_issue_city"
    t.integer  "admin_service_id"
    t.string   "approval_code"
    t.string   "approved_by"
    t.datetime "approved_timestamp"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_line3"
    t.string   "city"
    t.string   "state"
    t.string   "pin_code"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "partner_profiles", ["admin_service_city_id"], name: "index_partner_profiles_on_admin_service_city_id", using: :btree
  add_index "partner_profiles", ["admin_service_id"], name: "index_partner_profiles_on_admin_service_id", using: :btree
  add_index "partner_profiles", ["user_id"], name: "index_partner_profiles_on_user_id", using: :btree

  create_table "service_requests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "admin_service_city_id"
    t.integer  "admin_service_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.date     "need_by_date"
    t.string   "service_desc"
  end

  add_index "service_requests", ["admin_service_city_id"], name: "index_service_requests_on_admin_service_city_id", using: :btree
  add_index "service_requests", ["admin_service_id"], name: "index_service_requests_on_admin_service_id", using: :btree
  add_index "service_requests", ["user_id"], name: "index_service_requests_on_user_id", using: :btree

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

  add_foreign_key "partner_profiles", "admin_service_cities"
  add_foreign_key "partner_profiles", "admin_services"
  add_foreign_key "partner_profiles", "users"
  add_foreign_key "service_requests", "admin_service_cities"
  add_foreign_key "service_requests", "admin_services"
  add_foreign_key "service_requests", "users"
end

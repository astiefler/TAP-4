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

ActiveRecord::Schema.define(version: 20170821012227) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "age_ranges", force: :cascade do |t|
    t.string   "age_range_code"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "blood_types", force: :cascade do |t|
    t.string   "blood_type_desc"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer  "gender_id"
    t.integer  "blood_type_id"
    t.integer  "state_id"
    t.integer  "country_id"
    t.integer  "age_range_id"
    t.integer  "zodiac_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.float    "weight"
    t.string   "height"
    t.string   "occupation"
    t.decimal  "premium"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "country_name"
    t.string   "country_abbv"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string   "gender_desc"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "probabilities", force: :cascade do |t|
    t.integer  "state_id"
    t.integer  "age_range_id"
    t.integer  "gender_id"
    t.integer  "population"
    t.integer  "death"
    t.decimal  "probability"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "states", force: :cascade do |t|
    t.integer  "country_id"
    t.string   "state_name"
    t.string   "state_abbv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zodiacs", force: :cascade do |t|
    t.string   "zodiac_desc"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

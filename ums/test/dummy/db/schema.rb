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

ActiveRecord::Schema.define(version: 2018_10_07_154004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ums_addresses", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "state"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ums_albums", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "medium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ums_media", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ums_rewards", force: :cascade do |t|
    t.string "title"
    t.string "action"
    t.integer "points"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ums_sessions", force: :cascade do |t|
    t.string "session_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ums_users", force: :cascade do |t|
    t.string "username", default: ""
    t.string "firstname", default: ""
    t.string "lastname", default: ""
    t.string "email", default: ""
    t.string "mobile_phone", default: ""
    t.boolean "verified", default: false
    t.string "password_salt"
    t.string "language", default: ""
    t.string "encrypted_password"
    t.string "password"
    t.string "confirmation_token", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

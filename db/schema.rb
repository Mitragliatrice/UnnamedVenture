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

ActiveRecord::Schema.define(version: 20170901073259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "street"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

  create_table "estimates", force: :cascade do |t|
    t.integer "currently_listed"
    t.string "prop_owner_name"
    t.string "contact_name"
    t.string "email"
    t.string "phone"
    t.string "street"
    t.string "street2"
    t.string "city"
    t.string "state"
    t.bigint "zip"
    t.integer "beds"
    t.integer "baths"
    t.bigint "home_sf"
    t.bigint "prop_sf"
    t.integer "num_garages"
    t.integer "pool"
    t.integer "spa"
    t.text "upgrades"
    t.text "damage"
    t.text "photo"
    t.text "tod_call"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

end

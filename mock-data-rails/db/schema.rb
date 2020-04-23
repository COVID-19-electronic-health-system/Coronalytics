# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_07_170715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "observations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_observations_on_user_id"
  end

  create_table "physicals", force: :cascade do |t|
    t.string "fever"
    t.string "chills"
    t.string "breathShortnes"
    t.string "fatigue"
    t.string "dryCough"
    t.string "soreThroat"
    t.string "bluLipsFace"
    t.string "gastrointestinnal"
    t.string "headache"
    t.float "temperature"
    t.bigint "observation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["observation_id"], name: "index_physicals_on_observation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "virus_checks", force: :cascade do |t|
    t.boolean "coronavirus"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_virus_checks_on_user_id"
  end

  add_foreign_key "observations", "users"
  add_foreign_key "physicals", "observations"
  add_foreign_key "virus_checks", "users"
end

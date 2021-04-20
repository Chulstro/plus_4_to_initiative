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

ActiveRecord::Schema.define(version: 2021_04_19_003814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_classses", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "classs_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_character_classses_on_character_id"
    t.index ["classs_id"], name: "index_character_classses_on_classs_id"
  end

  create_table "character_races", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "race_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_character_races_on_character_id"
    t.index ["race_id"], name: "index_character_races_on_race_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "lvl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "classses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subclasses", force: :cascade do |t|
    t.bigint "classs_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classs_id"], name: "index_subclasses_on_classs_id"
  end

  add_foreign_key "character_classses", "characters"
  add_foreign_key "character_classses", "classses"
  add_foreign_key "character_races", "characters"
  add_foreign_key "character_races", "races"
  add_foreign_key "subclasses", "classses"
end

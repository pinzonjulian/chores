# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_04_16_100654) do
  create_table "assignments", force: :cascade do |t|
    t.integer "position", default: 0, null: false
    t.integer "chore_id", null: false
    t.integer "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chore_id"], name: "index_assignments_on_chore_id"
    t.index ["person_id"], name: "index_assignments_on_person_id"
  end

  create_table "chores", force: :cascade do |t|
    t.string "name", null: false
    t.json "schedule", null: false
    t.integer "household_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id"], name: "index_chores_on_household_id"
  end

  create_table "households", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name", null: false
    t.integer "household_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id"], name: "index_people_on_household_id"
  end

  add_foreign_key "assignments", "chores"
  add_foreign_key "assignments", "people"
  add_foreign_key "chores", "households"
  add_foreign_key "people", "households"
end

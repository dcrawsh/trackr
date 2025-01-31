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

ActiveRecord::Schema.define(version: 2020_06_02_031926) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employee_trainings", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "training_id", null: false
    t.date "occurence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "location_id"
    t.index ["employee_id"], name: "index_employee_trainings_on_employee_id"
    t.index ["location_id"], name: "index_employee_trainings_on_location_id"
    t.index ["training_id"], name: "index_employee_trainings_on_training_id"
  end

  create_table "employees", force: :cascade do |t|
    t.integer "employee_number"
    t.string "first_name"
    t.string "last_name"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_employees_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "title"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "location_id"
  end

  add_foreign_key "employee_trainings", "employees"
  add_foreign_key "employee_trainings", "locations"
  add_foreign_key "employee_trainings", "trainings"
  add_foreign_key "employees", "locations"
  add_foreign_key "trainings", "locations"
end

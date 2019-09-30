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

ActiveRecord::Schema.define(version: 2019_09_30_191817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "holidays", force: :cascade do |t|
    t.string "name", null: false
    t.text "comment", null: false
    t.string "country", null: false
    t.date "planned_date", comment: "Start date of planned holiday"
    t.integer "length", comment: "Length in days of planned holiday"
    t.integer "priority", comment: "Priority of holiday from user point of view"
    t.integer "cost", comment: "Estimated cost of holiday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "holidays_users", id: false, force: :cascade do |t|
    t.bigint "holiday_id"
    t.bigint "user_id"
    t.index ["holiday_id"], name: "index_holidays_users_on_holiday_id"
    t.index ["user_id"], name: "index_holidays_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "nick", null: false
    t.string "password"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "role", null: false
    t.integer "born_year", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["id"], name: "index_users_on_id"
  end

end

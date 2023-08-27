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

ActiveRecord::Schema[7.0].define(version: 2023_08_27_004125) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hosts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "marital_status"
    t.date "date_of_birth"
    t.string "occupation"
    t.string "employer"
    t.string "home_address"
    t.string "email"
    t.string "home_phone_number"
    t.string "work_phone_number"
    t.string "student_gender_preference"
    t.boolean "smoking_permitted"
    t.integer "student_capacity"
    t.boolean "internet_access"
    t.boolean "pets"
    t.string "pets_list"
    t.string "languages"
    t.text "reason"
    t.string "special_interests"
    t.string "health_concerns"
    t.boolean "criminal_background"
    t.string "criminal_background_detail"
    t.boolean "agree_to_terms"
    t.boolean "children"
    t.string "children_list"
    t.string "other_residents"
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "private_room"
    t.string "bathroom"
    t.string "title"
    t.string "description"
    t.string "location_in_house"
    t.bigint "host_id"
    t.index ["host_id"], name: "index_rooms_on_host_id"
  end

  create_table "stays", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "student_id"
    t.bigint "host_id"
    t.bigint "room_id"
    t.index ["host_id"], name: "index_stays_on_host_id"
    t.index ["room_id"], name: "index_stays_on_room_id"
    t.index ["student_id"], name: "index_stays_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.date "date_of_birth"
    t.string "home_address"
    t.string "email"
    t.string "phone_number"
    t.string "line_account"
    t.string "occupation"
    t.string "school_in_japan"
    t.string "program_in_hawaii"
    t.string "emergency_contact_name"
    t.string "emergency_contact_relationship"
    t.string "emergency_contact_phone"
    t.string "emergency_contact_email"
    t.boolean "allergies"
    t.string "allergies_details"
    t.string "hobbies"
    t.boolean "smoker"
    t.datetime "arrival_in_hawaii"
    t.string "arriving_flight_number"
    t.datetime "departure_from_hawaii"
    t.string "returning_flight_number"
    t.boolean "host_family_preferences_kids"
    t.boolean "host_family_preferences_pets"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "rooms", "hosts", on_delete: :cascade
  add_foreign_key "stays", "hosts", on_delete: :cascade
  add_foreign_key "stays", "rooms", on_delete: :cascade
  add_foreign_key "stays", "students", on_delete: :cascade
end

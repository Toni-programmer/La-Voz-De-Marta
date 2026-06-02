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

ActiveRecord::Schema[8.1].define(version: 2026_06_02_221645) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "notes"
    t.bigint "patient_id", null: false
    t.datetime "scheduled_at"
    t.bigint "service_id", null: false
    t.string "status"
    t.bigint "therapist_id", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["service_id"], name: "index_appointments_on_service_id"
    t.index ["therapist_id"], name: "index_appointments_on_therapist_id"
  end

  create_table "patient_notes", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.bigint "patient_id", null: false
    t.date "session_date"
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_patient_notes_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.text "background"
    t.date "birth_date"
    t.datetime "created_at", null: false
    t.string "email"
    t.string "full_name"
    t.string "modality"
    t.string "phone"
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.text "excerpt"
    t.date "published_at"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.integer "duration_minutes"
    t.string "modality"
    t.string "name"
    t.decimal "price"
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "author_name"
    t.text "content"
    t.datetime "created_at", null: false
    t.string "role"
    t.datetime "updated_at", null: false
  end

  create_table "therapists", force: :cascade do |t|
    t.string "college_number"
    t.datetime "created_at", null: false
    t.string "email"
    t.string "name"
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_therapists_on_email", unique: true
  end

  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "services"
  add_foreign_key "appointments", "therapists"
  add_foreign_key "patient_notes", "patients"
end

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

ActiveRecord::Schema.define(version: 2022_02_09_080029) do

  create_table "agencies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "agency_name", null: false
    t.string "agency_president", null: false
    t.integer "prefecture_id", null: false
    t.string "city", null: false
    t.string "house_number", null: false
    t.string "building_name", null: false
    t.string "permit_number", null: false
    t.string "website", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_agencies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_agencies_on_reset_password_token", unique: true
  end

  create_table "jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "status", null: false
    t.string "title", null: false
    t.integer "occupation_id", null: false
    t.integer "prefecture_id", null: false
    t.integer "city", null: false
    t.string "house_number", null: false
    t.string "building_name"
    t.integer "line_id", null: false
    t.integer "station_id", null: false
    t.integer "classification_id", null: false
    t.integer "salary", null: false
    t.integer "period_id", null: false
    t.integer "start_hour", null: false
    t.integer "start_minute", null: false
    t.integer "end_hour", null: false
    t.integer "end_minute", null: false
    t.string "holiday", null: false
    t.text "descriprion", null: false
    t.bigint "agency_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agency_id"], name: "index_jobs_on_agency_id"
  end

  add_foreign_key "jobs", "agencies"
end

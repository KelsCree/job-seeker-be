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

ActiveRecord::Schema.define(version: 2020_10_21_002104) do

  create_table "applications", force: :cascade do |t|
    t.string "company"
    t.string "position"
    t.string "description"
    t.string "url"
    t.string "status"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "interviews", force: :cascade do |t|
    t.date "date"
    t.string "time"
    t.string "location"
    t.integer "application_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["application_id"], name: "index_interviews_on_application_id"
  end

  create_table "reccomendations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "number"
    t.string "relationship"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_reccomendations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "linkedin"
    t.string "resume"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "applications", "users"
  add_foreign_key "interviews", "applications"
  add_foreign_key "reccomendations", "users"
end

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

ActiveRecord::Schema.define(version: 2021_05_05_073207) do

  create_table "addresses", charset: "utf8mb4", force: :cascade do |t|
    t.string "address"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "addressable_type"
    t.integer "addressable_id"
  end

  create_table "sites", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.bigint "study_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["study_id"], name: "index_sites_on_study_id"
  end

  create_table "studies", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", default: ""
    t.integer "age_limit"
    t.string "drug"
    t.integer "phase", default: 0
    t.string "symptoms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "study_group_id"
  end

  create_table "studies_subjects", charset: "utf8mb4", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "study_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "study_groups", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "sites", "studies"
end

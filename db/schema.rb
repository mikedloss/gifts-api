# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_13_172621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gifts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "verses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.string "uuid"
    t.string "email"
    t.bigint "primary1_id"
    t.bigint "primary2_id"
    t.bigint "primary3_id"
    t.bigint "secondary1_id"
    t.bigint "secondary2_id"
    t.bigint "secondary3_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "raw_results"
    t.index ["primary1_id"], name: "index_results_on_primary1_id"
    t.index ["primary2_id"], name: "index_results_on_primary2_id"
    t.index ["primary3_id"], name: "index_results_on_primary3_id"
    t.index ["secondary1_id"], name: "index_results_on_secondary1_id"
    t.index ["secondary2_id"], name: "index_results_on_secondary2_id"
    t.index ["secondary3_id"], name: "index_results_on_secondary3_id"
  end

end

# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160307200852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clues", force: :cascade do |t|
    t.integer "left_coordinate"
    t.integer "top_coordinate"
    t.integer "question_id"
    t.integer "scenario_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string  "picture"
    t.string  "text"
    t.string  "answer"
    t.string  "hint"
    t.string  "category"
    t.integer "clue_id"
  end

  create_table "scenarios", force: :cascade do |t|
    t.string "floor_plan_url"
    t.string "text_intro"
  end

  create_table "scenarios_users", id: false, force: :cascade do |t|
    t.integer "scenario_id", null: false
    t.integer "user_id",     null: false
  end

  add_index "scenarios_users", ["scenario_id", "user_id"], name: "index_scenarios_users_on_scenario_id_and_user_id", using: :btree
  add_index "scenarios_users", ["user_id", "scenario_id"], name: "index_scenarios_users_on_user_id_and_scenario_id", using: :btree

  create_table "scores", force: :cascade do |t|
    t.boolean "hint_used"
    t.boolean "answer_correct"
    t.integer "user_id"
    t.integer "question_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
  end

end

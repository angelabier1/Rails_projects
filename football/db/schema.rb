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

ActiveRecord::Schema.define(version: 20150202002550) do

  create_table "cities", force: :cascade do |t|
    t.text    "name"
    t.integer "population_2013"
    t.integer "population_2010"
    t.float   "population_change"
    t.integer "population_density"
    t.integer "state_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string   "name"
    t.integer  "team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "wins"
    t.integer  "losses"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "quoted_date"
    t.integer  "home_team"
    t.integer  "away_team"
    t.integer  "home_score"
    t.integer  "away_score"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "external_id"
  end

  create_table "predictions", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.text    "name"
    t.text    "abbr"
    t.text    "capital"
    t.text    "biggest_city"
    t.integer "population"
    t.integer "area"
  end

  create_table "teams", force: :cascade do |t|
    t.text    "name"
    t.integer "wins"
    t.integer "losses"
    t.integer "ties"
    t.text    "division"
    t.text    "conference"
    t.boolean "playoff"
    t.integer "city_id"
    t.string  "api_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weeks", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "number"
    t.integer  "game_id"
    t.string   "api_id"
    t.string   "api_game_id"
  end

end

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

ActiveRecord::Schema.define(version: 2018_11_01_034958) do

  create_table "games", force: :cascade do |t|
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.integer "winning_team_id"
    t.integer "losing_team_id"
    t.integer "winning_score"
    t.integer "losing_score"
    t.integer "week"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "draw"
    t.index ["away_team_id"], name: "index_games_on_away_team_id"
    t.index ["home_team_id"], name: "index_games_on_home_team_id"
    t.index ["losing_team_id"], name: "index_games_on_losing_team_id"
    t.index ["winning_team_id"], name: "index_games_on_winning_team_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.integer "group_leader_id"
    t.text "player_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_leader_id"], name: "index_groups_on_group_leader_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "abbrv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130722013636) do

  create_table "brawls", :force => true do |t|
    t.integer  "week"
    t.integer  "round"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "brawls_pro_teams", :force => true do |t|
    t.integer  "brawl_id"
    t.integer  "pro_team_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "dashboards", :force => true do |t|
    t.string   "index"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fantasy_teams", :force => true do |t|
    t.string   "name"
    t.integer  "pro_team_id"
    t.integer  "manager_id"
    t.decimal  "team_sub_total"
    t.decimal  "anti_team_sub_total"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "fantasy_teams_leagues", :force => true do |t|
    t.integer  "league_id"
    t.integer  "fantasy_team_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "fantasy_teams_pro_players", :force => true do |t|
    t.integer  "fantasy_team_id"
    t.integer  "pro_player_id"
    t.string   "type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "managers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "points", :force => true do |t|
    t.integer  "player_id"
    t.integer  "reason_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pro_leagues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pro_leagues_pro_players", :force => true do |t|
    t.integer  "pro_league_id"
    t.integer  "pro_player_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "pro_players", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "name"
    t.integer  "pro_team_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pro_players_throwdowns", :force => true do |t|
    t.integer  "throwdown_id"
    t.integer  "pro_player_id"
    t.boolean  "win"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "pro_teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pro_teams_pro_players", :force => true do |t|
    t.integer  "pro_team_id"
    t.integer  "pro_player_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "throwdowns", :force => true do |t|
    t.integer  "brawl_id"
    t.integer  "set"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

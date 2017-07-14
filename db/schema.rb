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

ActiveRecord::Schema.define(version: 20170714181625) do

  create_table "rushing_performances", force: :cascade do |t|
    t.string "player_name", null: false
    t.string "team_abbreviation", null: false
    t.string "position_abbreviation", null: false
    t.integer "attempts", null: false
    t.float "attempts_per_game", null: false
    t.integer "yards", null: false
    t.float "yards_per_attempt", null: false
    t.float "yards_per_game", null: false
    t.integer "touchdowns", null: false
    t.string "long", null: false
    t.integer "first_downs", null: false
    t.float "first_down_percentage", null: false
    t.integer "twenty_plus", null: false
    t.integer "forty_plus", null: false
    t.integer "fumbles", null: false
  end

end

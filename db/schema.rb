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

ActiveRecord::Schema.define(version: 20170423073607) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.string   "homepage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.integer  "publisher_id"
    t.integer  "author_id"
    t.integer  "expansion_to_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "games", ["author_id"], name: "index_games_on_author_id"
  add_index "games", ["expansion_to_id"], name: "index_games_on_expansion_to_id"
  add_index "games", ["publisher_id"], name: "index_games_on_publisher_id"

  create_table "publishers", force: :cascade do |t|
    t.string   "name"
    t.string   "homepage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

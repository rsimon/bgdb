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

ActiveRecord::Schema.define(version: 20170507104813) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.string   "homepage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authorships", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "authorships", ["author_id"], name: "index_authorships_on_author_id"
  add_index "authorships", ["game_id"], name: "index_authorships_on_game_id"

  create_table "copies", force: :cascade do |t|
    t.integer  "game_id"
    t.string   "language"
    t.string   "purchased_at"
    t.string   "purchase_price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "copies", ["game_id"], name: "index_copies_on_game_id"

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.string   "image_uid"
    t.integer  "year"
    t.integer  "amount"
    t.integer  "expansion_to_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "games", ["expansion_to_id"], name: "index_games_on_expansion_to_id"

  create_table "productions", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "publisher_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "productions", ["game_id"], name: "index_productions_on_game_id"
  add_index "productions", ["publisher_id"], name: "index_productions_on_publisher_id"

  create_table "publishers", force: :cascade do |t|
    t.string   "name"
    t.string   "homepage"
    t.string   "logo_uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end

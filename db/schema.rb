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

ActiveRecord::Schema.define(version: 20160805182915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "like_recipes", force: :cascade do |t|
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "like_recipes", ["recipe_id"], name: "index_like_recipes_on_recipe_id", using: :btree
  add_index "like_recipes", ["user_id", "recipe_id"], name: "index_like_recipes_on_user_id_and_recipe_id", unique: true, using: :btree
  add_index "like_recipes", ["user_id"], name: "index_like_recipes_on_user_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.text     "instructions",       default: [],              array: true
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "user_id"
    t.text     "ingredients",        default: [],              array: true
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "examples", "users"
  add_foreign_key "like_recipes", "recipes"
  add_foreign_key "like_recipes", "users"
  add_foreign_key "recipes", "users"
end

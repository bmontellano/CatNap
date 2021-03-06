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

ActiveRecord::Schema.define(version: 20170627180251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.text "likes_dislikes"
    t.integer "age"
    t.string "gender"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cat_pic_file_name"
    t.string "cat_pic_content_type"
    t.integer "cat_pic_file_size"
    t.datetime "cat_pic_updated_at"
    t.index ["user_id"], name: "index_cats_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "date_from"
    t.string "date_to"
    t.text "description"
    t.bigint "cat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cat_id"], name: "index_events_on_cat_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cats", "users"
  add_foreign_key "events", "cats"
end

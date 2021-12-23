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

ActiveRecord::Schema.define(version: 2021_12_22_091507) do

  create_table "bodies", force: :cascade do |t|
    t.integer "user_id"
    t.float "weight"
    t.float "bfp"
    t.string "image_id"
    t.date "record_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bodies_on_user_id"
  end

  create_table "meal_details", force: :cascade do |t|
    t.integer "meal_id"
    t.string "name"
    t.integer "calory"
    t.float "protein"
    t.float "fat"
    t.float "carb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_meal_details_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.integer "user_id"
    t.date "date", null: false
    t.integer "category", null: false
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_meals_on_user_id"
  end

  create_table "training_details", force: :cascade do |t|
    t.integer "training_id"
    t.float "weight"
    t.integer "repetition"
    t.float "time"
    t.float "distance"
    t.string "memo"
    t.integer "body_part", null: false
    t.string "training_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["training_id"], name: "index_training_details_on_training_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.date "training_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.boolean "sex", default: true, null: false
    t.date "birthday", null: false
    t.float "height", null: false
    t.float "weight"
    t.string "profile_image_id"
    t.boolean "is_deleted", default: false, null: false
    t.integer "activity_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

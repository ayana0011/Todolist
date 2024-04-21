# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_22_185534) do
  create_table "foods", force: :cascade do |t|
    t.text "item"
    t.text "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "households", force: :cascade do |t|
    t.text "item"
    t.text "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "checkbox"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_id"
    t.string "food_id"
    t.string "sanitary_id"
    t.string "household_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "check_box"
    t.integer "water"
    t.integer "rice"
    t.integer "food"
    t.integer "can"
    t.integer "seasonal"
    t.integer "ramen"
    t.integer "snack"
    t.integer "wettissue"
    t.integer "spray"
    t.integer "mask"
    t.integer "box"
    t.integer "medicine"
    t.integer "toilet"
    t.integer "period"
    t.integer "wrappingfilm"
    t.integer "plasticbags"
    t.integer "plasticgloves"
    t.integer "toiletpaper"
    t.integer "tissue"
    t.integer "light"
    t.integer "battery"
    t.integer "tape"
    t.integer "waterbag"
    t.integer "alumi"
  end

  create_table "sanitaries", force: :cascade do |t|
    t.text "item"
    t.text "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
  end

end

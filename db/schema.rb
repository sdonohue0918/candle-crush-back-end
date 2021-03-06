# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_09_205320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candles", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "image"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "quantity"
    t.integer "starting_inv"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "user_id"
    t.integer "candle_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review"
    t.integer "rating"
    t.integer "user_id"
    t.integer "candle_id"
  end

  create_table "scents", force: :cascade do |t|
    t.string "scent"
    t.integer "candle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "user_type"
  end

end

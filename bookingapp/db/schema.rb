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

ActiveRecord::Schema[7.0].define(version: 2023_11_24_035929) do
  create_table "bookings", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "booking_date"
    t.string "phone", null: false
    t.date "date_start"
    t.date "end_date"
    t.integer "numbers_people"
    t.decimal "total_amount", precision: 10, scale: 2
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tour_detail_id", null: false
    t.bigint "user_id", null: false
    t.index ["tour_detail_id"], name: "index_bookings_on_tour_detail_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "image_reviews", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "review_id", null: false
    t.index ["review_id"], name: "index_image_reviews_on_review_id"
  end

  create_table "image_tours", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tour_id", null: false
    t.index ["tour_id"], name: "index_image_tours_on_tour_id"
  end

  create_table "reviews", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "review_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "tour_id", null: false
    t.index ["tour_id"], name: "index_reviews_on_tour_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tour_categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "category_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tour_details", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "detail_description"
    t.string "tour_detail_name", null: false
    t.integer "max_people"
    t.string "start_location", null: false
    t.decimal "price", precision: 10, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tour_id"
    t.index ["tour_id"], name: "index_tour_details_on_tour_id"
  end

  create_table "tour_followings", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tour_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tour_id"], name: "index_tour_followings_on_tour_id"
    t.index ["user_id", "tour_id"], name: "index_tour_followings_on_user_id_and_tour_id", unique: true
    t.index ["user_id"], name: "index_tour_followings_on_user_id"
  end

  create_table "tours", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "tour_name", null: false
    t.string "time_duration", null: false
    t.string "hagtag"
    t.text "tour_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tour_category_id"
    t.index ["tour_category_id"], name: "index_tours_on_tour_category_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.string "image", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "tour_details"
  add_foreign_key "bookings", "users"
  add_foreign_key "image_reviews", "reviews"
  add_foreign_key "image_tours", "tours"
  add_foreign_key "reviews", "tours"
  add_foreign_key "reviews", "users"
  add_foreign_key "tour_details", "tours"
  add_foreign_key "tour_followings", "tours"
  add_foreign_key "tour_followings", "users"
  add_foreign_key "tours", "tour_categories"
end

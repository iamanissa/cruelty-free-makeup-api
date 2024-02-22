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

ActiveRecord::Schema[7.1].define(version: 2024_02_21_190342) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.integer "price_category"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.boolean "cruelty_free", default: true, null: false
    t.boolean "vegan", default: false, null: false
    t.boolean "organic", default: false, null: false
    t.boolean "leaping_bunny", default: false, null: false
    t.boolean "peta", default: false, null: false
    t.boolean "clean_beauty", default: false, null: false
    t.boolean "choose_cruelty_free", default: false, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "color_number"
    t.string "color_name"
    t.text "ingredients"
    t.bigint "brand_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
  end

  create_table "websites", force: :cascade do |t|
    t.string "name"
    t.string "type", null: false
    t.string "url"
    t.bigint "brand_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_websites_on_brand_id"
  end

  add_foreign_key "products", "brands"
  add_foreign_key "websites", "brands"
end

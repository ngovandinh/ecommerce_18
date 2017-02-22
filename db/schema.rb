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

ActiveRecord::Schema.define(version: 20170222004218) do

  create_table "activities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "activity_type"
    t.integer  "activity_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "activities", ["user_id"], name: "index_activities_on_user_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quatity"
    t.decimal  "price"
    t.integer  "status"
    t.string   "information"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"
  add_index "order_items", ["product_id"], name: "index_order_items_on_product_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "status"
    t.decimal  "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "products", force: :cascade do |t|
    t.integer  "subcategory_id"
    t.string   "name"
    t.float    "rate"
    t.string   "information"
    t.string   "image"
    t.integer  "number"
    t.decimal  "price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "products", ["subcategory_id"], name: "index_products_on_subcategory_id"

  create_table "rates", force: :cascade do |t|
    t.integer  "rate"
    t.integer  "product_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rates", ["product_id"], name: "index_rates_on_product_id"
  add_index "rates", ["user_id"], name: "index_rates_on_user_id"

  create_table "requests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subcategory_id"
    t.string   "name"
    t.integer  "number"
    t.integer  "status"
    t.string   "information"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "requests", ["subcategory_id"], name: "index_requests_on_subcategory_id"
  add_index "requests", ["user_id"], name: "index_requests_on_user_id"

  create_table "subcategories", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "avatar"
    t.string   "address"
    t.string   "phone"
    t.string   "password_digest"
    t.boolean  "is_admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end

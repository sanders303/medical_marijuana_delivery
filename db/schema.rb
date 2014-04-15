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

ActiveRecord::Schema.define(version: 20140415152602) do

  create_table "order_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.datetime "timestamp"
    t.string   "shipping_address"
    t.integer  "transaction_id"
    t.decimal  "transaction_total"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["product_id"], name: "index_orders_on_product_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "pictures", force: true do |t|
    t.integer  "product_id"
    t.string   "paper_clip_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["product_id"], name: "index_pictures_on_product_id"

  create_table "product_options", force: true do |t|
    t.integer  "product_id"
    t.integer  "wieght_id"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "order_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["order_item_id"], name: "index_products_on_order_item_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_confirmation"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weights", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

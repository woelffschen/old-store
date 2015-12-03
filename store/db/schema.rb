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

ActiveRecord::Schema.define(version: 20151203142557) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "number"
    t.string   "city"
    t.integer  "postelCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.decimal  "price"
    t.integer  "colour",      default: 0, null: false
    t.integer  "size",        default: 0, null: false
    t.text     "description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "category_id"
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.string   "iban"
    t.string   "bic"
    t.string   "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.boolean  "billPayed"
    t.boolean  "shipped"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "shoppingList_id"
    t.integer  "bankAccount_id"
    t.integer  "address_id"
    t.integer  "shippingMethod_id"
  end

  create_table "shipping_methods", force: :cascade do |t|
    t.string   "logistics"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "shoppingList_id"
  end

  create_table "shopping_items", force: :cascade do |t|
    t.integer  "quantity"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "article_id"
    t.integer  "shoppingList_id"
  end

  create_table "shopping_lists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

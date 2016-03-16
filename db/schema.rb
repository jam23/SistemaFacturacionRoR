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

ActiveRecord::Schema.define(version: 20160316194903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "description"
    t.decimal  "unit_price"
    t.bit      "status",      limit: 1
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "articles", ["category_id"], name: "index_articles_on_category_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "description"
    t.bit      "status",      limit: 1
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "trademark"
    t.string   "identification"
    t.integer  "account_number"
    t.string   "telephone"
    t.bit      "status",         limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "entries", force: :cascade do |t|
    t.string   "description"
    t.integer  "client_id"
    t.integer  "account_number"
    t.string   "movement_type"
    t.decimal  "amount"
    t.bit      "status",         limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "entries", ["client_id"], name: "index_entries_on_client_id", using: :btree

  create_table "invoice_headers", force: :cascade do |t|
    t.integer  "seller_id"
    t.integer  "client_id"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "invoice_headers", ["client_id"], name: "index_invoice_headers_on_client_id", using: :btree
  add_index "invoice_headers", ["seller_id"], name: "index_invoice_headers_on_seller_id", using: :btree

  create_table "invoice_lines", force: :cascade do |t|
    t.integer  "invoice_header_id"
    t.integer  "article_id"
    t.integer  "quantity"
    t.decimal  "unit_price"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "invoice_lines", ["article_id"], name: "index_invoice_lines_on_article_id", using: :btree
  add_index "invoice_lines", ["invoice_header_id"], name: "index_invoice_lines_on_invoice_header_id", using: :btree

  create_table "sellers", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.integer  "comission_percent"
    t.bit      "status",            limit: 1
    t.string   "username"
    t.string   "password"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "articles", "categories"
  add_foreign_key "entries", "clients"
  add_foreign_key "invoice_headers", "clients"
  add_foreign_key "invoice_headers", "sellers"
  add_foreign_key "invoice_lines", "articles"
  add_foreign_key "invoice_lines", "invoice_headers"
end

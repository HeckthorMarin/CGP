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

ActiveRecord::Schema.define(version: 20180608115440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "title"
    t.float "begBalance"
    t.float "curBalance"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "entity_id"
    t.bigint "icon_id"
    t.bigint "type_account_id"
    t.bigint "badge_id"
    t.index ["badge_id"], name: "index_accounts_on_badge_id"
    t.index ["entity_id"], name: "index_accounts_on_entity_id"
    t.index ["icon_id"], name: "index_accounts_on_icon_id"
    t.index ["type_account_id"], name: "index_accounts_on_type_account_id"
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "badges", force: :cascade do |t|
    t.string "name"
    t.float "rel_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "budgets", force: :cascade do |t|
    t.string "category"
    t.float "begBalance"
    t.float "curBalance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "badge_id"
    t.bigint "category_id"
    t.index ["badge_id"], name: "index_budgets_on_badge_id"
    t.index ["category_id"], name: "index_budgets_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "configurations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "transaction_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_expenses_on_category_id"
    t.index ["transaction_id"], name: "index_expenses_on_transaction_id"
  end

  create_table "icons", force: :cascade do |t|
    t.string "ref_icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "ref_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "transaction_id"
    t.index ["transaction_id"], name: "index_incomes_on_transaction_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.float "value"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "badge_id"
    t.bigint "account_id"
    t.index ["account_id"], name: "index_transactions_on_account_id"
    t.index ["badge_id"], name: "index_transactions_on_badge_id"
  end

  create_table "transfers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "transaction_id"
    t.bigint "account_id"
    t.index ["account_id"], name: "index_transfers_on_account_id"
    t.index ["transaction_id"], name: "index_transfers_on_transaction_id"
  end

  create_table "type_accounts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "lastname"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "sq1"
    t.string "sa1"
    t.string "sq2"
    t.string "sa2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asksecurityone"
    t.string "answersecurityone"
    t.string "asksecuritytwo"
    t.string "answersecuritytwo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "badges"
  add_foreign_key "accounts", "entities"
  add_foreign_key "accounts", "icons"
  add_foreign_key "accounts", "type_accounts"
  add_foreign_key "accounts", "users"
  add_foreign_key "budgets", "badges"
  add_foreign_key "budgets", "categories"
  add_foreign_key "expenses", "categories"
  add_foreign_key "expenses", "transactions"
  add_foreign_key "incomes", "transactions"
  add_foreign_key "transactions", "accounts"
  add_foreign_key "transactions", "badges"
  add_foreign_key "transfers", "accounts"
  add_foreign_key "transfers", "transactions"
end

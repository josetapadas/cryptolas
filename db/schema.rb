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

ActiveRecord::Schema.define(version: 2021_03_09_104338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "portfolios", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "positions", force: :cascade do |t|
    t.float "amount"
    t.float "real_value"
    t.float "fee_value"
    t.float "current_value"
    t.integer "action"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "wallet_id"
    t.index ["wallet_id"], name: "index_positions_on_wallet_id"
  end

  create_table "wallets", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.bigint "portfolio_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["portfolio_id"], name: "index_wallets_on_portfolio_id"
  end

  add_foreign_key "positions", "wallets"
  add_foreign_key "wallets", "portfolios"
end

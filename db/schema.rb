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

ActiveRecord::Schema.define(version: 20150223104955) do

  create_table "cals", force: :cascade do |t|
    t.string   "customer_name"
    t.date     "opening_date"
    t.float    "roi"
    t.integer  "amount"
    t.string   "transaction_type"
    t.string   "jewel_detail"
    t.float    "gross_weight"
    t.float    "net_weight"
    t.integer  "appraised_amount"
    t.integer  "no_of_days"
    t.date     "closing_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "amount_due"
    t.string   "status"
  end

end

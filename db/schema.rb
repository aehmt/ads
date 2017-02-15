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

ActiveRecord::Schema.define(version: 20170209174052) do

  create_table "adgroups", force: :cascade do |t|
    t.string   "name"
    t.string   "status"
    t.integer  "bid_amount"
    t.integer  "campaign_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["campaign_id"], name: "index_adgroups_on_campaign_id"
  end

  create_table "ads", force: :cascade do |t|
    t.string   "name"
    t.integer  "adgroup_id"
    t.string   "headline_part1"
    t.string   "headline_part2"
    t.string   "description"
    t.string   "path1"
    t.string   "path2"
    t.string   "final_urls"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["adgroup_id"], name: "index_ads_on_adgroup_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string   "name"
    t.string   "status"
    t.integer  "budget"
    t.string   "advertising_channel_type"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end

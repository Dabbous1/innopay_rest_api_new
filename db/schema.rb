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

ActiveRecord::Schema.define(version: 2018_08_26_182842) do

  create_table "addresses", force: :cascade do |t|
    t.string "streetname"
    t.string "zipcode"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receivers", force: :cascade do |t|
    t.string "name"
    t.integer "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_receivers_on_address_id"
  end

  create_table "senders", force: :cascade do |t|
    t.string "userid"
    t.string "name"
    t.string "email"
    t.string "photourl"
    t.integer "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_senders_on_address_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.integer "tntcode"
    t.string "status"
    t.integer "weight"
    t.string "content"
    t.integer "price"
    t.integer "sender_id"
    t.integer "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_shipments_on_receiver_id"
    t.index ["sender_id"], name: "index_shipments_on_sender_id"
  end

end

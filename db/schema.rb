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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20141113194941) do
=======
ActiveRecord::Schema.define(version: 20141113192218) do
>>>>>>> feffb31475334693baccc71fb2a158090c8cd5cc

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foodies", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  create_table "reviews", force: true do |t|
    t.string   "title"
    t.integer  "rating"
    t.text     "comments"
=======
  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "address"
    t.integer  "capacity"
    t.text     "bio"
    t.integer  "phone_number",    limit: 8
>>>>>>> feffb31475334693baccc71fb2a158090c8cd5cc
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

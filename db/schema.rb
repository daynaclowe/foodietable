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

ActiveRecord::Schema.define(version: 20141113221026) do

>>>>>>> c8be66073c7bcfae8ed1d02deeb5ba3c4a76fb9c

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

=======
  create_table "reviews", force: true do |t|
    t.string   "title"
    t.integer  "rating"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
>>>>>>> c8be66073c7bcfae8ed1d02deeb5ba3c4a76fb9c
  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "address"
    t.integer  "capacity"
    t.text     "bio"
    t.integer  "phone_number",    limit: 8
<<<<<<< HEAD
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "title"
    t.integer  "rating"
    t.text     "comments"
=======
>>>>>>> c8be66073c7bcfae8ed1d02deeb5ba3c4a76fb9c
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "size_of_party"
    t.text     "comments_and_requests"
    t.integer  "user_phone"
    t.datetime "res_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "email_address"
  end

end

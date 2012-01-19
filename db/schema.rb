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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120119200942) do

  create_table "app_images", :force => true do |t|
    t.string   "url"
    t.integer  "gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.string   "thumbnail_url"
  end

  add_index "app_images", ["gallery_id"], :name => "index_app_images_on_gallery_id"

  create_table "bios", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "imagename"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cds", :force => true do |t|
    t.string   "name"
    t.integer  "year"
    t.text     "reviews"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.date     "dateofevent"
    t.time     "timeofevent"
    t.string   "townstate"
    t.string   "address"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fans", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "main_screen"
    t.string   "description"
  end

  create_table "images", :force => true do |t|
    t.string   "url"
    t.boolean  "main_screen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", :force => true do |t|
    t.date     "date"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presses", :force => true do |t|
    t.string   "location"
    t.text     "content"
    t.string   "reviewer"
    t.string   "readmoreurl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", :force => true do |t|
    t.string   "name"
    t.integer  "order_number"
    t.integer  "cd_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tracks", ["cd_id"], :name => "index_tracks_on_cd_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end

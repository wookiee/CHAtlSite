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

ActiveRecord::Schema.define(:version => 20130226072231) do

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "first_name"
    t.string   "email"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "role"
    t.string   "last_name"
    t.string   "twitter_handle"
    t.string   "profile_image_uri"
  end

  create_table "venues", :force => true do |t|
    t.string   "name",                                  :null => false
    t.string   "street_address",                        :null => false
    t.string   "city",           :default => "Atlanta", :null => false
    t.string   "state",          :default => "GA",      :null => false
    t.string   "zip",                                   :null => false
    t.text     "notes"
    t.text     "map_url"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "venue_type",     :default => "meeting", :null => false
  end

end

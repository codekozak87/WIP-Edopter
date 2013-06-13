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

ActiveRecord::Schema.define(:version => 20130611073104) do

  create_table "companies", :force => true do |t|
    t.string  "company_name"
    t.string  "company_email"
    t.integer "user_id"
    t.integer "event_id"
    t.string  "website"
    t.string  "bread_and_butter"
    t.string  "social_url"
    t.string  "product"
  end

  create_table "events", :force => true do |t|
    t.integer "user_id"
    t.integer "company_id"
    t.string  "event_name"
    t.date    "event_date"
    t.text    "event_description"
    t.string  "location"
  end

  create_table "users", :force => true do |t|
    t.string "username"
    t.string "password"
    t.text   "interests"
    t.text   "about_me"
    t.text   "name"
  end

end
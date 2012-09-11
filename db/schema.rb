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

ActiveRecord::Schema.define(:version => 20120811233201) do

  create_table "events", :force => true do |t|
    t.binary    "user_uuid",  :limit => 16, :null => false
    t.binary    "tab_id",     :limit => 16, :null => false
    t.timestamp "created_at",               :null => false
    t.string    "source",     :limit => 6,  :null => false
  end

  create_table "urls", :force => true do |t|
    t.binary    "user_uuid",         :limit => 16, :null => false
    t.binary    "tab_id",            :limit => 16, :null => false
    t.timestamp "client_created_at",               :null => false
    t.timestamp "created_at",                      :null => false
    t.string    "request_type",      :limit => 14, :null => false
    t.text      "url",                             :null => false
    t.text      "referer"
  end

end

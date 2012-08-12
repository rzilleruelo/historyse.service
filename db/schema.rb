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

  create_table "tabs", :force => true do |t|
    t.binary    "user_uuid",  :limit => 16, :null => false
    t.binary    "tab_id",     :limit => 16, :null => false
    t.timestamp "created_at",               :null => false
  end

  add_index "tabs", ["created_at"], :name => "created_at"
  add_index "tabs", ["tab_id"], :name => "tab_id"
  add_index "tabs", ["user_uuid"], :name => "user_uuid"

  create_table "urls", :force => true do |t|
    t.binary    "user_uuid",         :limit => 16, :null => false
    t.timestamp "created_at",                      :null => false
    t.timestamp "client_created_at",               :null => false
    t.string    "request_type",      :limit => 14, :null => false
    t.binary    "tab_id",            :limit => 16, :null => false
    t.text      "url",                             :null => false
    t.text      "referer"
  end

  add_index "urls", ["client_created_at"], :name => "client_created_at"
  add_index "urls", ["request_type"], :name => "request_type"
  add_index "urls", ["user_uuid"], :name => "user_uuid"

end

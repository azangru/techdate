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

ActiveRecord::Schema.define(:version => 20140611213224) do

  create_table "messages", :force => true do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.string   "title"
    t.text     "body"
    t.boolean  "read",              :default => false
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.boolean  "remove_from_inbox", :default => false
    t.boolean  "remove_from_sent",  :default => false
    t.boolean  "seen",              :default => false
  end

  add_index "messages", ["recipient_id"], :name => "index_messages_on_recipient_id"
  add_index "messages", ["sender_id"], :name => "index_messages_on_sender_id"

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.text     "bio"
    t.integer  "age"
    t.string   "gender"
    t.string   "city"
    t.string   "current_occupation"
    t.string   "programming_languages"
    t.string   "native_human_language"
    t.string   "other_human_languages"
    t.text     "interests"
    t.string   "relationship_status"
    t.integer  "children"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "interested_in_gender"
    t.integer  "interested_in_age_start"
    t.integer  "interested_in_age_end"
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "saved_profiles", :force => true do |t|
    t.integer  "saver_id"
    t.integer  "profile_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "saved_profiles", ["profile_id"], :name => "index_saved_profiles_on_profile_id"
  add_index "saved_profiles", ["saver_id"], :name => "index_saved_profiles_on_saver_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",           :null => false
    t.string   "encrypted_password",     :default => "",           :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,            :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role",                   :default => "basic_user"
    t.string   "image"
    t.boolean  "paid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "views", :force => true do |t|
    t.integer  "viewer_id"
    t.integer  "profile_id"
    t.boolean  "seen",       :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "views", ["profile_id"], :name => "index_views_on_profile_id"
  add_index "views", ["viewer_id"], :name => "index_views_on_viewer_id"

end

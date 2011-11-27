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

ActiveRecord::Schema.define(:version => 20110930191249) do

  create_table "kalplan_bodies", :force => true do |t|
    t.string   "razdel"
    t.integer  "nned"
    t.integer  "chasov"
    t.string   "vid_zan"
    t.string   "nagl_pos"
    t.string   "zad_stud"
    t.integer  "kalplan_tltle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kalplan_tltles", :force => true do |t|
    t.string   "predmet"
    t.integer  "spec"
    t.string   "group"
    t.string   "kurs"
    t.string   "semestr"
    t.string   "god"
    t.integer  "chislo_ned"
    t.integer  "chislo_zan"
    t.integer  "kprtk"
    t.integer  "stnagr"
    t.integer  "labrab"
    t.string   "uchregd"
    t.string   "prepod"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teachers", ["email"], :name => "index_teachers_on_email", :unique => true
  add_index "teachers", ["reset_password_token"], :name => "index_teachers_on_reset_password_token", :unique => true

end

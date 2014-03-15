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

ActiveRecord::Schema.define(version: 20140315180114) do

  create_table "actors", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "equity"
    t.integer  "height"
    t.integer  "weight"
    t.string   "headshot"
    t.string   "resume"
    t.string   "gender"
    t.string   "hair"
    t.string   "eyes"
  end

  add_index "actors", ["email"], name: "index_actors_on_email", unique: true
  add_index "actors", ["reset_password_token"], name: "index_actors_on_reset_password_token", unique: true

  create_table "associates", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "title"
    t.integer  "company_id"
  end

  add_index "associates", ["email"], name: "index_associates_on_email", unique: true
  add_index "associates", ["reset_password_token"], name: "index_associates_on_reset_password_token", unique: true

  create_table "auditions", force: true do |t|
    t.string   "name"
    t.date     "post_date"
    t.string   "audition_date"
    t.text     "description"
    t.integer  "company_id"
    t.boolean  "equity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "phone"
    t.string   "email"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submissions", force: true do |t|
    t.integer  "actor_id"
    t.integer  "audition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

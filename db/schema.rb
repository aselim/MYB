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

ActiveRecord::Schema.define(version: 20151223195626) do

  create_table "myb_evl_answers", force: :cascade do |t|
    t.string   "Evl_id",      limit: 255
    t.string   "Question_id", limit: 255
    t.string   "Answer",      limit: 255
    t.integer  "Intake_id",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "myb_evl_creations", force: :cascade do |t|
    t.string   "Name",          limit: 255
    t.integer  "Author_id",     limit: 4
    t.string   "Target_User",   limit: 255
    t.string   "Serial",        limit: 255
    t.date     "Schedule"
    t.integer  "Eval_Time_Min", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "myb_evl_intakes", force: :cascade do |t|
    t.integer  "Solver_id",    limit: 4
    t.datetime "Start_time"
    t.integer  "Duration_min", limit: 4
    t.float    "Result",       limit: 24
    t.string   "Evl_id",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "myb_evl_quests", force: :cascade do |t|
    t.integer  "Type",       limit: 4
    t.string   "Question",   limit: 255
    t.string   "Answer",     limit: 255
    t.string   "Evl_id",     limit: 255
    t.string   "Serial",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "myb_pad_accounts", force: :cascade do |t|
    t.string   "Username",   limit: 255
    t.string   "Password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "myb_sup_evl_quest_types", force: :cascade do |t|
    t.string   "Type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end

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

ActiveRecord::Schema.define(version: 20150211051041) do

  create_table "default_groups", force: :cascade do |t|
    t.string  "emailaddress"
    t.string  "groupname"
    t.integer "host_group_id"
  end

  create_table "high_scores", force: :cascade do |t|
    t.string   "name"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "host_groups", force: :cascade do |t|
    t.string "groupname"
    t.string "emailaddress"
  end

  create_table "hosts", force: :cascade do |t|
    t.string  "hostname"
    t.string  "ipaddr"
    t.string  "type"
    t.string  "macaddr"
    t.integer "host_group_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string  "tag"
    t.integer "hostgroupid"
    t.integer "hostid"
  end

end

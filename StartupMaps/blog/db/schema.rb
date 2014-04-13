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

ActiveRecord::Schema.define(version: 20140413190053) do

  create_table "comments", force: true do |t|
    t.string   "comment"
    t.integer  "entities_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.string   "location"
    t.string   "headquarter"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_available_internships", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "available"
    t.integer  "enity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_social_links", force: true do |t|
    t.string   "socialLinks"
    t.integer  "enity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_work_portfolios", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "launch"
    t.integer  "enity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_work_statuses", force: true do |t|
    t.string   "workstatus"
    t.integer  "enity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_invitations", force: true do |t|
    t.boolean  "accept"
    t.integer  "receiver_id"
    t.integer  "sender_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.boolean  "private"
    t.string   "description"
    t.string   "name"
    t.string   "location"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "investors", force: true do |t|
    t.float    "longitude"
    t.float    "latitude"
    t.string   "contact_information"
    t.integer  "entities_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", force: true do |t|
    t.integer  "post_id"
    t.integer  "comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "tittle"
    t.string   "text"
    t.integer  "group_id"
    t.integer  "entities_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "location"
    t.string   "goals"
    t.string   "name"
    t.integer  "milestones"
    t.string   "category"
    t.datetime "launch"
    t.string   "description"
    t.string   "requirements"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.float    "longitude"
    t.float    "latitude"
    t.integer  "enity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startup_needs", force: true do |t|
    t.string   "needs"
    t.integer  "startup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startup_resources", force: true do |t|
    t.string   "resources"
    t.integer  "startup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startups", force: true do |t|
    t.float    "longitude"
    t.float    "latitude"
    t.string   "initiatior_name"
    t.integer  "milestones"
    t.integer  "entities_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "social_account"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20140328194732) do

  create_table "comments", force: true do |t|
    t.integer  "group_id"
    t.datetime "date"
    t.integer  "numofLikes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.string   "industry"
    t.string   "headquarters"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_contacts", force: true do |t|
    t.integer  "entity_id"
    t.integer  "number"
    t.string   "e_mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "geographical_location_groups", force: true do |t|
    t.integer  "group_id"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_members", force: true do |t|
    t.integer  "enity_id"
    t.datetime "dateJoined"
    t.boolean  "groupCreator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "dateCreated"
    t.string   "description"
    t.integer  "numberOfMembers"
    t.integer  "groupCreatorId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interest_entities", force: true do |t|
    t.integer  "entity_id"
    t.string   "interest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interestgroups", force: true do |t|
    t.integer  "group_id"
    t.string   "creatorName"
    t.string   "typeOfInterest"
    t.boolean  "private"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "internships_entities", force: true do |t|
    t.integer  "entity_id"
    t.string   "name"
    t.string   "description"
    t.boolean  "available"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "investors", force: true do |t|
    t.integer  "entity_id"
    t.string   "Name"
    t.string   "description"
    t.boolean  "online_Status"
    t.string   "sector"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolio_entities", force: true do |t|
    t.integer  "entity_id"
    t.string   "name"
    t.string   "description"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.integer  "group_id"
    t.datetime "date"
    t.integer  "numofLikes"
    t.integer  "numofComments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "category"
    t.string   "goal"
    t.string   "requirements"
    t.integer  "milestone"
    t.integer  "startup_id"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "send_merge_requests", force: true do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.integer  "project_id"
    t.integer  "response"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.boolean  "online_Status"
    t.string   "sector"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sign_ups", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signups", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_link_entities", force: true do |t|
    t.integer  "entity_id"
    t.string   "social_media_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startups", force: true do |t|
    t.integer  "entity_id"
    t.integer  "milestones"
    t.string   "needs"
    t.boolean  "online_Status"
    t.boolean  "launched_Status"
    t.string   "joint_Ventures"
    t.string   "sector"
    t.integer  "number_of_working_years"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "groupofInterest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "video_entities", force: true do |t|
    t.integer  "entity_id"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workstatus_entities", force: true do |t|
    t.integer  "entity_id"
    t.string   "workstatus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

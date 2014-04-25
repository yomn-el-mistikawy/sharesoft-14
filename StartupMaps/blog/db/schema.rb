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

ActiveRecord::Schema.define(version: 20140425121046) do

  create_table "comments", force: true do |t|
    t.string   "comment"
    t.integer  "entity_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.string   "e_mail"
    t.string   "verification_code"
    t.string   "location"
    t.string   "headquarter"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "auth_token"
    t.string   "password_reset"
    t.datetime "sent_at"
  end

  create_table "entity_available_internships", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "available"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_goals", force: true do |t|
    t.string   "goals"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_jobs", force: true do |t|
    t.string   "jobs"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_needs", force: true do |t|
    t.string   "needs"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_social_links", force: true do |t|
    t.string   "socialLinks"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_statuses", force: true do |t|
    t.string   "status"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_video_links", force: true do |t|
    t.string   "url"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_work_portfolios", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "launch"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_work_statuses", force: true do |t|
    t.string   "workstatus"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendships", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_invitations", force: true do |t|
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
    t.string   "interest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_startups", force: true do |t|
    t.integer  "group_id"
    t.integer  "startup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "investors", force: true do |t|
    t.float    "longitude"
    t.float    "latitude"
    t.string   "contact_information"
    t.integer  "entity_id"
    t.string   "name"
    t.string   "sector"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "join_requests", force: true do |t|
    t.integer  "sender_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", force: true do |t|
    t.integer  "post_id"
    t.integer  "comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_attachments", force: true do |t|
    t.datetime "date"
    t.string   "description"
    t.integer  "groups_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "text"
    t.integer  "group_id"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "location"
    t.string   "goals"
    t.string   "name"
    t.integer  "milestones"
    t.string   "category"
    t.boolean  "launch"
    t.string   "description"
    t.string   "requirements"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resumes", force: true do |t|
    t.string   "name"
    t.string   "attachement"
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
    t.float    "longitude"
    t.float    "latitude"
    t.integer  "entity_id"
    t.string   "name"
    t.string   "sector"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startup_has_groups", force: true do |t|
    t.integer  "startup_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startup_have_projects", force: true do |t|
    t.integer  "startup_id"
    t.integer  "project_id"
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
    t.integer  "entity_id"
    t.string   "location"
    t.string   "name"
    t.boolean  "online_status"
    t.boolean  "launch_status"
    t.string   "joint_ventures"
    t.string   "sector"
    t.integer  "number_of_working_years"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", force: true do |t|
    t.integer  "subscriber_id"
    t.integer  "subscribee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "tags"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "social_account"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end

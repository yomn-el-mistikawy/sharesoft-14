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

ActiveRecord::Schema.define(version: 20140504092807) do

  create_table "badges", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "category"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "comment"
    t.string   "commenter"
    t.integer  "startup_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conversations", force: true do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "discuss_messages", force: true do |t|
    t.string   "subject"
    t.text     "body"
    t.integer  "user_id"
    t.string   "ancestry"
    t.string   "draft_recipient_ids"
    t.datetime "sent_at"
    t.datetime "received_at"
    t.datetime "read_at"
    t.datetime "trashed_at"
    t.datetime "deleted_at"
    t.boolean  "editable",            default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discuss_messages", ["ancestry"], name: "index_discuss_messages_on_ancestry", using: :btree
  add_index "discuss_messages", ["user_id"], name: "index_discuss_messages_on_user_id", using: :btree

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
    t.integer  "sender_id_id"
    t.integer  "receiver_id_id"
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
    t.integer  "liker_id"
    t.integer  "likable_id"
    t.string   "likable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "entity_id"
    t.integer  "receiver_id"
    t.string   "tittle"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", force: true do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "notification_code"
    t.string   "attachment"
    t.boolean  "global",               default: false
    t.datetime "expires"
  end

  add_index "notifications", ["conversation_id"], name: "index_notifications_on_conversation_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "text"
    t.integer  "group_id"
    t.integer  "startup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_requirements", force: true do |t|
    t.string   "description"
    t.boolean  "reached"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_targets", force: true do |t|
    t.string   "description"
    t.boolean  "reached"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "location"
    t.string   "name"
    t.string   "category"
    t.boolean  "launch"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "receipts", force: true do |t|
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "receipts", ["notification_id"], name: "index_receipts_on_notification_id", using: :btree

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

  create_table "startups_badges", force: true do |t|
    t.integer  "badge_id"
    t.integer  "startup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "startups_projects", force: true do |t|
    t.integer  "startup_id"
    t.integer  "project_id"
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

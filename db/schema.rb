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

ActiveRecord::Schema.define(version: 20210410141454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "quantity"
    t.text     "description"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "remaining_quantity"
    t.string   "serial"
    t.decimal  "price",              precision: 8, scale: 2
    t.string   "consumable"
  end

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "supstaff"
    t.string   "oic"
    t.string   "section"
  end

  create_table "orders", force: :cascade do |t|
    t.boolean  "status"
    t.date     "expire_at"
    t.integer  "item_id"
    t.integer  "member_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "section"
    t.string   "details"
    t.string   "deployedby"
    t.string   "returnedby"
    t.integer  "requisitionnumber"
    t.integer  "quantity"
    t.string   "depcategory"
    t.index ["item_id"], name: "index_orders_on_item_id", using: :btree
    t.index ["member_id"], name: "index_orders_on_member_id", using: :btree
  end

  create_table "reports", force: :cascade do |t|
    t.string   "quantity"
    t.boolean  "status"
    t.integer  "item_id"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "station"
    t.string   "category"
    t.string   "section"
    t.index ["item_id"], name: "index_reports_on_item_id", using: :btree
    t.index ["member_id"], name: "index_reports_on_member_id", using: :btree
  end

  create_table "toners", primary_key: "requisitionnumber", force: :cascade do |t|
    t.string   "username"
    t.string   "tonername"
    t.integer  "quantity"
    t.string   "sectionname"
    t.string   "stationname"
    t.datetime "requestdate"
    t.string   "comment"
    t.datetime "issuedate"
    t.string   "issuedby"
    t.string   "issuecomment"
    t.integer  "user_id",        null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "quantityissued"
    t.string   "member"
    t.string   "signature"
    t.index ["user_id"], name: "index_toners_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.boolean  "admin"
    t.string   "stationname"
    t.string   "cmisuser"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "orders", "items"
  add_foreign_key "orders", "members"
  add_foreign_key "reports", "items"
  add_foreign_key "reports", "members"
  add_foreign_key "toners", "users"
end

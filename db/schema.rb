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

ActiveRecord::Schema.define(version: 20210911195547) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acctypes", primary_key: "acctcode", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
    t.string   "code"
  end

  create_table "asyfxns", primary_key: "asyfxn", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "code"
    t.string   "description"
  end

  create_table "awuser_changes", force: :cascade do |t|
    t.boolean  "acc_clerk"
    t.boolean  "fo_sting"
    t.boolean  "cusexaminer"
    t.boolean  "surveyor"
    t.boolean  "stn_manifest"
    t.boolean  "rmanagement"
    t.boolean  "pwarehouse"
    t.boolean  "excise"
    t.boolean  "s_postaudit"
    t.boolean  "exchrates"
    t.boolean  "report_user"
    t.boolean  "enforcement"
    t.boolean  "internal_auditor"
    t.boolean  "ass_comp_exam"
    t.boolean  "ass_comp_selena"
    t.boolean  "ass_comp_pg"
    t.boolean  "comptroller"
    t.boolean  "cashier"
    t.boolean  "chief_examiner"
    t.boolean  "facevet"
    t.boolean  "manifest"
    t.boolean  "t1"
    t.boolean  "swarehouse"
    t.boolean  "valuation"
    t.boolean  "postaudit"
    t.boolean  "item_admin_approval"
    t.boolean  "senforcement"
    t.boolean  "legal_officer"
    t.boolean  "ass_comp_postaudit"
    t.boolean  "ass_comp_benque"
    t.boolean  "ass_comp_pgia"
    t.boolean  "deputy_comptroller"
    t.boolean  "vetted_approvedby"
    t.datetime "vetted_approveddate"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "awuser_id"
    t.string   "type_of_migration"
    t.index ["awuser_id"], name: "index_awuser_changes_on_awuser_id", using: :btree
  end

  create_table "awusers", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "username"
    t.integer  "user_id"
    t.boolean  "comptroller_of_customs"
    t.boolean  "deputy_comptroller"
    t.boolean  "internal_auditor"
    t.boolean  "first_class_clerk"
    t.boolean  "officer1"
    t.boolean  "officerIII"
    t.boolean  "examinerII"
    t.boolean  "system_admin1"
    t.boolean  "dbadmin2"
    t.boolean  "netadmin1"
    t.boolean  "legal_councel"
    t.boolean  "fo"
    t.boolean  "second_class_clerk"
    t.boolean  "OfficerII"
    t.boolean  "examiner1"
    t.boolean  "examinerIII"
    t.boolean  "system_adminII"
    t.boolean  "developer"
    t.boolean  "bze_city_headquarters"
    t.boolean  "big_creek"
    t.boolean  "consejo"
    t.boolean  "dangriga"
    t.boolean  "owalk"
    t.boolean  "sanpedro"
    t.boolean  "tvillage"
    t.boolean  "benque"
    t.boolean  "pgia"
    t.boolean  "pg"
    t.boolean  "santaelena"
    t.boolean  "bluecreek"
    t.boolean  "jalacte"
    t.boolean  "postoffice"
    t.boolean  "examination"
    t.boolean  "shipping"
    t.boolean  "postaudit"
    t.boolean  "pwarehouse"
    t.boolean  "rmanagement"
    t.boolean  "cmis"
    t.boolean  "examination_cargo"
    t.boolean  "accounts"
    t.boolean  "Excise"
    t.boolean  "ciu"
    t.boolean  "cusadministration"
    t.boolean  "pgia_passenger"
    t.boolean  "pgia_cargo"
    t.boolean  "acct_containerexam"
    t.boolean  "acct_accounts"
    t.boolean  "acct_warehouse"
    t.boolean  "acct_enforcement"
    t.boolean  "acct_cusadmin"
    t.boolean  "acct_pgia"
    t.boolean  "acct_benque"
    t.boolean  "acct_pg"
    t.boolean  "acct_santaelena"
    t.boolean  "acct_tvillage"
    t.boolean  "acct_lcargoexam"
    t.boolean  "acct_rmanagement"
    t.boolean  "acct_shipping"
    t.boolean  "acct_paudit"
    t.boolean  "acct_aworldadmin"
    t.boolean  "acct_bigcreek"
    t.boolean  "acct_owalk"
    t.boolean  "acct_sanpedro"
    t.boolean  "acct_dangriga"
    t.boolean  "acct_postoffice"
    t.string   "sup_name"
    t.datetime "oic_deputy_sigdate"
    t.string   "oic_deputy"
    t.datetime "sup_sigdate"
    t.string   "vetted_approved"
    t.datetime "vetted_approved_date"
    t.boolean  "ass_comptroller"
    t.boolean  "aworldadmin"
    t.text     "addinfo"
    t.string   "type_of_migration"
    t.string   "address"
    t.string   "contact"
    t.index ["user_id"], name: "index_awusers_on_user_id", using: :btree
    t.index ["username"], name: "index_awusers_on_username", using: :btree
  end

  create_table "cusections", primary_key: "secode", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "code"
    t.string   "description"
  end

  create_table "custations", primary_key: "stncode", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "code"
    t.string   "description"
  end

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

  create_table "emails", force: :cascade do |t|
    t.boolean  "passwordreset"
    t.boolean  "unblockemail"
    t.boolean  "newuser"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "reason"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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
    t.string   "condemn"
    t.string   "receipt"
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

  create_table "oranks", primary_key: "rankcode", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "code"
    t.string   "description"
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
    t.string   "condemn"
    t.index ["item_id"], name: "index_orders_on_item_id", using: :btree
    t.index ["member_id"], name: "index_orders_on_member_id", using: :btree
  end

  create_table "reports", force: :cascade do |t|
    t.string   "quantity"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supervisors", primary_key: "supcode", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "code"
    t.string   "description"
  end

  create_table "supnames", primary_key: "sup_id", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "supcode"
    t.integer  "user_id"
    t.index ["supcode"], name: "index_supnames_on_supcode", using: :btree
    t.index ["user_id"], name: "index_supnames_on_user_id", using: :btree
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
    t.boolean  "cusadmin"
    t.integer  "acctcode"
    t.integer  "asyfxn_user"
    t.integer  "stncode"
    t.integer  "rankcode"
    t.integer  "secode"
    t.integer  "cusection_id"
    t.string   "username"
    t.integer  "orank_id"
    t.string   "address"
    t.string   "contact"
    t.index ["acctcode"], name: "index_users_on_acctcode", using: :btree
    t.index ["asyfxn_user"], name: "index_users_on_asyfxn_user", using: :btree
    t.index ["cusection_id"], name: "index_users_on_cusection_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["orank_id"], name: "index_users_on_orank_id", using: :btree
    t.index ["rankcode"], name: "index_users_on_rankcode", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["secode"], name: "index_users_on_secode", using: :btree
    t.index ["stncode"], name: "index_users_on_stncode", using: :btree
  end

  add_foreign_key "orders", "items"
  add_foreign_key "orders", "members"
  add_foreign_key "toners", "users"
end

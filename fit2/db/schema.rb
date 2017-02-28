ActiveRecord::Schema.define(version: 20170228141326) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.string  "name"
    t.integer "weight"
    t.integer "reps"
    t.integer "sets"
    t.string  "photo_url"
    t.integer "program_id"
    t.index ["program_id"], name: "index_exercises_on_program_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string "username"
    t.string "location"
    t.string "interests"
  end

  create_table "programs", force: :cascade do |t|
    t.string  "name"
    t.string  "details"
    t.integer "user_id"
    t.index ["user_id"], name: "index_programs_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "exercises", "programs"
  add_foreign_key "programs", "users"
end

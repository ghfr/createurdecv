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

ActiveRecord::Schema.define(version: 2018_12_22_190843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cvs", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cvs_on_user_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.bigint "cv_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cv_id"], name: "index_experiences_on_cv_id"
  end

  create_table "formations", force: :cascade do |t|
    t.bigint "cv_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cv_id"], name: "index_formations_on_cv_id"
  end

  create_table "personnals", force: :cascade do |t|
    t.bigint "cv_id"
    t.string "name"
    t.string "title"
    t.string "telephone"
    t.string "siteweb"
    t.text "presentation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cv_id"], name: "index_personnals_on_cv_id"
  end

  create_table "skills", force: :cascade do |t|
    t.bigint "cv_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cv_id"], name: "index_skills_on_cv_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

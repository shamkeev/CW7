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

ActiveRecord::Schema.define(version: 20160222102944) do

  create_table "answers", force: :cascade do |t|
    t.string   "answer"
    t.boolean  "correct",     default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "question_id"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"

  create_table "questions", force: :cascade do |t|
    t.text     "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "test_id"
  end

  add_index "questions", ["test_id"], name: "index_questions_on_test_id"

  create_table "student_tests", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "group"
    t.text     "html"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "test_id"
  end

  add_index "student_tests", ["test_id"], name: "index_student_tests_on_test_id"

  create_table "test_reports", force: :cascade do |t|
    t.integer  "student_test_id"
    t.text     "html"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "test_reports", ["student_test_id"], name: "index_test_reports_on_student_test_id"

  create_table "tests", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

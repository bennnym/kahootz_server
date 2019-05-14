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

ActiveRecord::Schema.define(version: 2019_05_14_020338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text "answer"
    t.boolean "correct"
    t.integer "question_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.integer "quiz_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "nickname"
    t.boolean "entered_answer"
    t.integer "score"
    t.integer "game_id"
    t.integer "streak"
    t.boolean "last_correct"
    t.string "answer"
    t.datetime "created_at"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.integer "quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.text "category"
    t.text "difficulty"
  end

  create_table "users", force: :cascade do |t|
    t.text "username"
    t.text "password_digest"
    t.text "email"
  end

end

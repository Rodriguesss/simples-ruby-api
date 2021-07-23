# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_23_045056) do

  create_table "books", force: :cascade do |t|
    t.string "genre"
    t.string "author"
    t.integer "pages"
    t.integer "grade"
    t.string "title"
    t.boolean "read"
    t.integer "publishing_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "token", null: false
    t.index ["publishing_company_id"], name: "index_books_on_publishing_company_id"
    t.index ["token"], name: "index_books_on_token"
  end

  create_table "publishing_companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "token", null: false
    t.index ["token"], name: "index_users_on_token"
  end

  add_foreign_key "books", "publishing_companies"
end

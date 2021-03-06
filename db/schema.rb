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

ActiveRecord::Schema.define(version: 20140514025713) do

  create_table "authors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors_books", force: true do |t|
    t.integer "author_id"
    t.integer "book_id"
  end

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "summary"
    t.date     "released_at"
    t.string   "edition"
    t.string   "isnb"
    t.integer  "pages"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books_authors", force: true do |t|
    t.integer "book_id"
    t.integer "author_id"
  end

  add_index "books_authors", ["author_id"], name: "index_books_authors_on_author_id"
  add_index "books_authors", ["book_id"], name: "index_books_authors_on_book_id"

end

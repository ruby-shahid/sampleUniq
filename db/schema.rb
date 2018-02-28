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

ActiveRecord::Schema.define(version: 20180228172349) do

  create_table "documents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "file_one_file_name"
    t.string "file_one_content_type"
    t.integer "file_one_file_size"
    t.datetime "file_one_updated_at"
    t.string "file_two_file_name"
    t.string "file_two_content_type"
    t.integer "file_two_file_size"
    t.datetime "file_two_updated_at"
    t.string "file_tree_file_name"
    t.string "file_tree_content_type"
    t.integer "file_tree_file_size"
    t.datetime "file_tree_updated_at"
    t.string "file_four_file_name"
    t.string "file_four_content_type"
    t.integer "file_four_file_size"
    t.datetime "file_four_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

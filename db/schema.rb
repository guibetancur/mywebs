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

ActiveRecord::Schema.define(version: 20170913144902) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "recommendations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.integer "calls"
    t.integer "ranking"
    t.boolean "private"
    t.integer "subcategory_id"
    t.index ["subcategory_id"], name: "index_recommendations_on_subcategory_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "category_id"
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

end

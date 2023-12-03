# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_12_02_205800) do
  create_table "accessories", force: :cascade do |t|
    t.string "name"
    t.integer "count"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frames", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
  end

  create_table "mats", force: :cascade do |t|
    t.string "outer"
    t.string "inner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
  end

  create_table "photos", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prints", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "photo_id", null: false
    t.integer "substrate_id", null: false
    t.integer "size_id", null: false
    t.decimal "cost"
    t.integer "frame_id"
    t.integer "mat_id"
    t.decimal "frameCost"
    t.decimal "matCost"
    t.decimal "totalCost"
    t.integer "count"
    t.index ["frame_id"], name: "index_prints_on_frame_id"
    t.index ["mat_id"], name: "index_prints_on_mat_id"
    t.index ["photo_id"], name: "index_prints_on_photo_id"
    t.index ["size_id"], name: "index_prints_on_size_id"
    t.index ["substrate_id"], name: "index_prints_on_substrate_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "substrates", force: :cascade do |t|
    t.string "name"
    t.string "subtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "prints", "frames"
  add_foreign_key "prints", "mats"
  add_foreign_key "prints", "photos"
  add_foreign_key "prints", "sizes"
  add_foreign_key "prints", "substrates"
end

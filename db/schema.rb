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

ActiveRecord::Schema.define(version: 20160124073520) do

  create_table "plant_details", force: :cascade do |t|
    t.integer  "tsn"
    t.string   "common_name"
    t.string   "native"
    t.string   "invasive"
    t.string   "typical_habitat"
    t.string   "typical_flowering_time"
    t.string   "typical_fruiting_time"
    t.string   "growth_habit"
    t.string   "annual_biennial_perennial"
    t.string   "toxicity"
    t.string   "medical_uses"
    t.string   "culinary_uses"
    t.string   "ornamental_uses"
    t.string   "other_uses"
    t.string   "status_local"
    t.string   "status_state"
    t.string   "status_us"
    t.string   "status_global"
    t.string   "ecr"
    t.string   "hhcp"
    t.string   "leb"
    t.string   "uwb"
    t.string   "wsp"
    t.string   "ar"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string   "name"
    t.string   "leaf_type"
    t.string   "leaf_attachment"
    t.string   "leaf_arrangement"
    t.string   "leaf_veins"
    t.string   "leaf_edge"
    t.string   "flower_type"
    t.string   "flower_attachment"
    t.string   "flower_arrangement"
    t.string   "flower_symmetry"
    t.string   "flower_petal_number"
    t.string   "flower_petal_color"
    t.string   "fruit_type"
    t.string   "fruit_attachment"
    t.string   "fruit_arrangement"
    t.string   "fruit_color"
    t.string   "bark_attachment"
    t.string   "bark_texture"
    t.string   "bark_color"
    t.string   "thorn_type"
    t.string   "thorn_arrangement"
    t.string   "thorn_stiffness"
    t.string   "tendril_type"
    t.string   "tendril_attachment"
    t.string   "tendril_arrangement"
    t.integer  "tsn"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string   "name"
    t.string   "leaf_type"
    t.string   "leaf_attachment"
    t.string   "leaf_arrangement"
    t.string   "leaf_veins"
    t.string   "leaf_edge"
    t.string   "flower_type"
    t.string   "flower_attachment"
    t.string   "flower_arrangement"
    t.string   "flower_symmetry"
    t.string   "flower_petal_number"
    t.string   "flower_petal_color"
    t.string   "fruit_type"
    t.string   "fruit_attachment"
    t.string   "fruit_arrangement"
    t.string   "fruit_color"
    t.string   "bark_attachment"
    t.string   "bark_texture"
    t.string   "bark_color"
    t.string   "thorn_type"
    t.string   "thorn_arrangement"
    t.string   "thorn_stiffness"
    t.string   "tendril_type"
    t.string   "tendril_attachment"
    t.string   "tendril_arrangement"
    t.integer  "tsn"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end

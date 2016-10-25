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

ActiveRecord::Schema.define(version: 20161025004625) do

  create_table "profesors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ramos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "seccion"
    t.integer  "semestre"
    t.integer  "año"
    t.integer  "profesor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "ramos", ["profesor_id"], name: "index_ramos_on_profesor_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "rut"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "activated"
    t.string   "password_digest"
  end

end

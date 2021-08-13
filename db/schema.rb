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

ActiveRecord::Schema.define(version: 2021_08_12_225223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "buyers", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.integer "rut"
    t.string "mail"
    t.string "detail"
    t.bigint "owner_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_buyers_on_owner_id"
    t.index ["property_id"], name: "index_buyers_on_property_id"
  end

  create_table "detail_rents", force: :cascade do |t|
    t.text "detail"
    t.integer "value"
    t.string "contract"
    t.bigint "renter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["renter_id"], name: "index_detail_rents_on_renter_id"
  end

  create_table "detail_sales", force: :cascade do |t|
    t.text "detail"
    t.integer "caratula"
    t.string "url"
    t.integer "value"
    t.string "contract"
    t.bigint "buyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_detail_sales_on_buyer_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.integer "rut"
    t.string "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.string "detail"
    t.string "kind"
    t.string "adress"
    t.integer "rol"
    t.bigint "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_properties_on_owner_id"
  end

  create_table "renters", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.integer "rut"
    t.string "mail"
    t.string "detail"
    t.bigint "owner_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_renters_on_owner_id"
    t.index ["property_id"], name: "index_renters_on_property_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "buyers", "owners"
  add_foreign_key "buyers", "properties"
  add_foreign_key "detail_rents", "renters"
  add_foreign_key "detail_sales", "buyers"
  add_foreign_key "properties", "owners"
  add_foreign_key "renters", "owners"
  add_foreign_key "renters", "properties"
end

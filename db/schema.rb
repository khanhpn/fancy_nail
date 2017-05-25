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

ActiveRecord::Schema.define(version: 20170525224451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advetisments", force: :cascade do |t|
    t.string   "name"
    t.string   "picture_url"
    t.string   "text"
    t.integer  "position",                default: 0
    t.boolean  "hidden_item",             default: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "slug",        limit: 250
    t.text     "description"
    t.string   "icon_name"
    t.index ["hidden_item"], name: "index_advetisments_on_hidden_item", using: :btree
    t.index ["position"], name: "index_advetisments_on_position", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "slug",       limit: 250
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "position",               default: 0
    t.index ["slug"], name: "index_categories_on_slug", using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "pictures", force: :cascade do |t|
    t.text     "url_picture"
    t.boolean  "mark"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["mark"], name: "index_pictures_on_mark", using: :btree
    t.index ["product_id"], name: "index_pictures_on_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",          limit: 200
    t.string   "price",         limit: 250
    t.text     "description"
    t.string   "special",       limit: 99
    t.string   "slug",          limit: 250
    t.integer  "category_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "group_product",             default: 0
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["slug"], name: "index_products_on_slug", using: :btree
  end

  create_table "videos", force: :cascade do |t|
    t.string   "name"
    t.text     "url_video"
    t.text     "description"
    t.boolean  "hide",                    default: true
    t.integer  "position",                default: 0
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "slug",        limit: 250
    t.index ["hide"], name: "index_videos_on_hide", using: :btree
  end

end

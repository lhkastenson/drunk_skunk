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

ActiveRecord::Schema.define(version: 20141005235612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: true do |t|
    t.string  "name"
    t.string  "style"
    t.integer "ibu"
    t.string  "brewery_db_beer_id"
    t.text    "description"
    t.float   "abv"
    t.string  "food_pairings"
    t.float   "original_gravity"
    t.integer "brewery_db_glassware_id"
    t.integer "brewery_db_style_id"
    t.boolean "is_organic"
    t.float   "serving_temperature"
    t.integer "status"
    t.string  "status_display"
    t.string  "brewery_db_beer_variation_id"
    t.integer "year"
    t.integer "user_id"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brewery_db_category_id"
  end

  create_table "fermentables", force: true do |t|
    t.integer  "brewery_db_fermentable_id"
    t.string   "name"
    t.text     "description"
    t.string   "country_of_origin"
    t.integer  "srm_id"
    t.integer  "srm_precise"
    t.float    "moisture_content"
    t.float    "coarse_fine_difference"
    t.float    "diastatic_power"
    t.float    "dry_yield"
    t.float    "potential"
    t.float    "protein"
    t.float    "soluble_nitrogen_ratio"
    t.integer  "max_in_batch"
    t.boolean  "requires_mashing"
    t.string   "category"
    t.string   "category_display"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hops", force: true do |t|
    t.integer  "brewery_db_hop_id"
    t.string   "name"
    t.text     "description"
    t.string   "country_of_origin"
    t.float    "alpha_acid_min"
    t.float    "alpha_acid_max"
    t.float    "beta_acid_min"
    t.float    "beta_acid_max"
    t.float    "humulene_min"
    t.float    "humulene_max"
    t.float    "caryophyllene_min"
    t.float    "caryophyllene_max"
    t.float    "cohumulone_min"
    t.float    "cohumulone_max"
    t.float    "myrcene_min"
    t.float    "myrcene_max"
    t.float    "farnesene_min"
    t.float    "farnesene_max"
    t.boolean  "is_noble"
    t.boolean  "for_bittering"
    t.boolean  "for_flavor"
    t.boolean  "for_aroma"
    t.string   "category"
    t.string   "category_display"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labels", force: true do |t|
    t.string "brewery_db_beer_id"
    t.string "small"
    t.string "medium"
    t.string "large"
  end

  create_table "styles", force: true do |t|
    t.string   "brewery_db_style_id"
    t.string   "name"
    t.text     "description"
    t.integer  "brewery_db_category_id"
    t.string   "category"
    t.integer  "ibu_min"
    t.integer  "ibu_max"
    t.float    "abv_min"
    t.float    "abv_max"
    t.integer  "srm_min"
    t.integer  "srm_max"
    t.float    "og_min"
    t.float    "og_max"
    t.float    "fg_min"
    t.float    "fg_max"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "yeasts", force: true do |t|
    t.integer  "brewery_db_yeast_id"
    t.string   "name"
    t.text     "description"
    t.float    "attenuation_min"
    t.float    "attenuation_max"
    t.float    "ferment_temp_min"
    t.float    "ferment_temp_max"
    t.float    "alcohol_tolerance_min"
    t.float    "alcohol_tolerance_max"
    t.string   "product_id"
    t.string   "yeast_format"
    t.string   "category"
    t.string   "category_display"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "yeast_type"
    t.string   "supplier"
  end

end

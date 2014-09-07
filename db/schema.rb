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

ActiveRecord::Schema.define(version: 20140818004848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: true do |t|
    t.string  "name"
    t.string  "style"
    t.integer "ibu"
    t.string  "beerId"
    t.text    "description"
    t.float   "abv"
    t.string  "foodPairings"
    t.float   "originalGravity"
    t.integer "glasswareId"
    t.integer "styleId"
    t.boolean "isOrganic"
    t.float   "servingTemperature"
    t.integer "status"
    t.string  "statusDisplay"
    t.string  "beerVariationId"
    t.integer "year"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "categoryId"
  end

  create_table "fermentables", force: true do |t|
    t.integer  "fermentableId"
    t.string   "name"
    t.text     "description"
    t.string   "countryOfOrigin"
    t.integer  "srmId"
    t.integer  "srmPrecise"
    t.float    "moistureContent"
    t.float    "coarseFineDifference"
    t.float    "diastaticPower"
    t.float    "dryYield"
    t.float    "potential"
    t.float    "protein"
    t.float    "solubleNitrogenRatio"
    t.integer  "maxInBatch"
    t.boolean  "requiresMashing"
    t.string   "category"
    t.string   "categoryDisplay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hops", force: true do |t|
    t.integer  "hopId"
    t.string   "name"
    t.text     "description"
    t.string   "countryOfOrigin"
    t.float    "alphaAcidMin"
    t.float    "alphaAcidMax"
    t.float    "betaAcidMin"
    t.float    "betaAcidMax"
    t.float    "humuleneMin"
    t.float    "humuleneMax"
    t.float    "caryophylleneMin"
    t.float    "caryophylleneMax"
    t.float    "cohumuloneMin"
    t.float    "cohumuloneMax"
    t.float    "myrceneMin"
    t.float    "myrceneMax"
    t.float    "farneseneMin"
    t.float    "farneseneMax"
    t.boolean  "isNoble"
    t.boolean  "forBittering"
    t.boolean  "forFlavor"
    t.boolean  "forAroma"
    t.string   "category"
    t.string   "categoryDisplay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labels", force: true do |t|
    t.string "beerId"
    t.string "small"
    t.string "medium"
    t.string "large"
  end

  create_table "styles", force: true do |t|
    t.string   "styleId"
    t.string   "name"
    t.text     "description"
    t.integer  "categoryId"
    t.string   "category"
    t.integer  "ibuMin"
    t.integer  "ibuMax"
    t.float    "abvMin"
    t.float    "abvMax"
    t.integer  "srmMin"
    t.integer  "srmMax"
    t.float    "ogMin"
    t.float    "ogMax"
    t.float    "fgMin"
    t.float    "fgMax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "yeasts", force: true do |t|
    t.integer  "yeastId"
    t.string   "name"
    t.text     "description"
    t.float    "attenuationMin"
    t.float    "attenuationMax"
    t.float    "fermentTempMin"
    t.float    "fermentTempMax"
    t.float    "alcoholToleranceMin"
    t.float    "alcoholToleranceMax"
    t.string   "productId"
    t.string   "yeastFormat"
    t.string   "category"
    t.string   "categoryDisplay"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "yeastType"
    t.string   "supplier"
  end

end

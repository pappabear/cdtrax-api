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

ActiveRecord::Schema.define(version: 20180628151632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessment_areas", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bank_id"
  end

  create_table "banks", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "call_codes", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "collateral_codes", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "investment_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "investments", force: :cascade do |t|
    t.integer  "purpose_code_id"
    t.integer  "organization_id"
    t.integer  "investment_type_id"
    t.string   "cusip_number"
    t.date     "maturity_dt"
    t.string   "original_amount"
    t.string   "book_value"
    t.string   "unfunded_committment"
    t.string   "percent_of_entity_funding"
    t.boolean  "is_cra_qualified"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.date     "activity_dt"
  end

  create_table "loan_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "purpose_code_id"
    t.integer  "organization_id"
    t.integer  "loan_type_id"
    t.integer  "call_code_id"
    t.integer  "collateral_code_id"
    t.string   "account_number"
    t.string   "loan_number"
    t.integer  "amount"
    t.string   "term"
    t.string   "lien_address"
    t.string   "lien_city"
    t.string   "lien_state"
    t.string   "lien_zip"
    t.boolean  "is_cra_qualified"
    t.boolean  "is_3rd_party"
    t.boolean  "is_affiliate"
    t.string   "state_code"
    t.string   "county_code"
    t.string   "tract"
    t.string   "msa"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.date     "activity_dt"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.float    "revenue"
    t.integer  "number_of_employees"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "website"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "purpose_codes", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "service_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "purpose_code_id"
    t.integer  "volunteer_id"
    t.integer  "organization_id"
    t.integer  "assessment_area_id"
    t.integer  "service_type_id"
    t.integer  "total_hours"
    t.integer  "cra_hours"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.date     "activity_dt"
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "employee_code"
    t.string   "name"
    t.string   "title"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end

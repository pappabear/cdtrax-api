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

ActiveRecord::Schema.define(version: 20180425114413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.date     "activity_dt"
    t.string   "activity_type"
    t.integer  "purpose_code_id"
    t.integer  "employee_id"
    t.integer  "entity_id"
    t.string   "contact_name"
    t.integer  "assessment_area_id"
    t.string   "disaster_number"
    t.date     "disaster_start_dt"
    t.date     "disaster_end_dt"
    t.integer  "disaster_type_id"
    t.integer  "declaration_type_id"
    t.integer  "assistance_type_id"
    t.boolean  "related_service_flag"
    t.boolean  "related_investment_flag"
    t.boolean  "related_loan_flag"
    t.integer  "lmi_percentage"
    t.boolean  "is_benefit_statewide"
    t.boolean  "is_benefit_investment"
    t.boolean  "is_benefit_empowerment"
    t.boolean  "is_benefit_distressed"
    t.boolean  "is_benefit_underserved"
    t.boolean  "is_benefit_disaster"
    t.text     "notes"
    t.integer  "service_type_id"
    t.integer  "hours"
    t.integer  "cra_hours"
    t.boolean  "is_financial_expertise"
    t.integer  "investment_type_id"
    t.string   "cusip_number"
    t.date     "maturity_dt"
    t.integer  "original_amount"
    t.integer  "book_value"
    t.integer  "unfunded_committment"
    t.integer  "percent_of_entity_funding"
    t.string   "account_number"
    t.string   "loan_number"
    t.integer  "loan_type_id"
    t.integer  "call_code_id"
    t.integer  "collateral_code_id"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "term"
    t.boolean  "is_cra_qualified"
    t.boolean  "is_3rd_party"
    t.boolean  "is_affiliate"
    t.string   "state_code"
    t.string   "county_code"
    t.string   "tract"
    t.string   "msa"
    t.integer  "income_id"
    t.integer  "minority_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "assessment_areas", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bank_id"
  end

  create_table "assistance_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "banks", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "branches", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bank_id"
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

  create_table "declaration_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "disaster_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "title"
    t.integer  "default_bank_id"
    t.integer  "default_branch_id"
    t.boolean  "is_user"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "entities", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "revenue"
    t.string   "website"
    t.string   "number_of_employees"
    t.text     "mission"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "entity_groups", force: :cascade do |t|
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

  create_table "loan_types", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

end

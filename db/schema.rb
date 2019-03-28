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

ActiveRecord::Schema.define(version: 2019_03_28_151657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "absenses", force: :cascade do |t|
    t.date "date"
    t.string "nature_of_casualty"
    t.string "professional_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "achievements", force: :cascade do |t|
    t.integer "personel_detail_id"
    t.string "category"
    t.string "title"
    t.text "description"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.string "single_bank_account"
    t.string "joint_acount_no"
    t.string "ifsc_code"
    t.string "micr_no"
    t.string "bank_code"
    t.integer "personel_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "battle_honors", force: :cascade do |t|
    t.integer "unit_id"
    t.string "photo"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_posts", force: :cascade do |t|
    t.string "title"
    t.string "caption"
    t.text "description"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "champions", force: :cascade do |t|
    t.integer "unit_id"
    t.string "champ_name"
    t.string "photo"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commanding_officers", force: :cascade do |t|
    t.integer "unit_id"
    t.string "photo"
    t.string "name"
    t.string "designation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dependent_cards", force: :cascade do |t|
    t.string "name_of_dependent"
    t.string "dependent_type"
    t.date "date_of_birth"
    t.date "date_of_issue"
    t.integer "personel_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "desertions", force: :cascade do |t|
    t.date "date"
    t.string "nature_of_casualty"
    t.string "professional_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "place"
    t.date "date_of_offence"
    t.string "rank"
    t.text "offence"
    t.boolean "punishment_awarded"
    t.date "date_of_award_of_order"
    t.integer "professional_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string "degree_name"
    t.date "from"
    t.date "to"
    t.string "institute_name"
    t.string "degree_type"
    t.integer "personel_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "family_details", force: :cascade do |t|
    t.string "type", null: false
    t.string "name"
    t.string "relation_type"
    t.text "address"
    t.string "phone_number"
    t.date "date_of_birth"
    t.integer "personel_detail_id"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hierarchies", force: :cascade do |t|
    t.integer "user_id"
    t.integer "ro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_addresses", force: :cascade do |t|
    t.integer "personel_detail_id"
    t.integer "house_no"
    t.string "street"
    t.string "town"
    t.string "post_office"
    t.float "to_and_distance_from"
    t.string "police_station"
    t.string "tehsil"
    t.string "district"
    t.string "state"
    t.string "nrs_and_distance_from_home"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospital_admission_histories", force: :cascade do |t|
    t.date "date"
    t.datetime "time"
    t.string "nature_of_casuality"
    t.string "name_of_hospital"
    t.date "date_of_discharge"
    t.boolean "transferred"
    t.integer "medical_cat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investments", force: :cascade do |t|
    t.string "investment_type"
    t.float "amount"
    t.float "premium"
    t.integer "period"
    t.date "date_of_maturity"
    t.integer "personel_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kids", force: :cascade do |t|
    t.string "sex"
    t.date "place_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_records", force: :cascade do |t|
    t.string "type_of_leave"
    t.datetime "from"
    t.datetime "to"
    t.integer "total_no_of_days"
    t.date "date_of_rejoining"
    t.integer "professional_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loans", force: :cascade do |t|
    t.string "loan_type"
    t.float "amount"
    t.float "emi"
    t.integer "duration"
    t.date "loan_sanction_date"
    t.integer "personel_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "main_galaries", force: :cascade do |t|
    t.string "title"
    t.string "caption"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_rules", force: :cascade do |t|
    t.string "rule"
    t.integer "period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_cats", force: :cascade do |t|
    t.date "date"
    t.string "nature_of_emergency"
    t.boolean "permanent"
    t.integer "period_year"
    t.integer "period_month"
    t.boolean "hospitalized"
    t.integer "professional_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notable_people", force: :cascade do |t|
    t.integer "unit_id"
    t.string "photo"
    t.string "person_name"
    t.text "description"
    t.string "army_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "other_relations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personel_details", force: :cascade do |t|
    t.string "army_no"
    t.string "father_name"
    t.string "rank"
    t.string "appointment"
    t.string "name"
    t.string "religion"
    t.string "main_class"
    t.string "sub_class"
    t.string "med_cat"
    t.string "mothertongue"
    t.date "date_of_enrolment"
    t.date "date_of_birth"
    t.float "age_on_enrolment"
    t.string "attestation"
    t.date "date_of_attestation"
    t.string "driving_license_no"
    t.string "mobile_no"
    t.string "adhar_no"
    t.string "pancard_no"
    t.string "email"
    t.string "photo"
    t.string "family_photo"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "trade"
  end

  create_table "policies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "doc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posting_records", force: :cascade do |t|
    t.date "from"
    t.date "to"
    t.boolean "peace_duty"
    t.boolean "field_dduty"
    t.integer "total_peace_duty_day"
    t.integer "total_field_duty_day"
    t.integer "professional_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professional_details", force: :cascade do |t|
    t.string "army_no"
    t.string "local_course"
    t.string "pri_cadre"
    t.string "army_course"
    t.string "rules"
    t.string "posting"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "discharge_due_date"
    t.boolean "on_leave_currently"
    t.boolean "on_field_currently"
    t.string "reporting_officer_army_no"
  end

  create_table "professional_training_and_courses", force: :cascade do |t|
    t.string "name"
    t.string "profession_type"
    t.date "from"
    t.date "to"
    t.integer "personel_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promotion_cadres", force: :cascade do |t|
    t.string "rank"
    t.date "date"
    t.integer "promotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rank_masters", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reversions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rule_periods", force: :cascade do |t|
    t.date "from"
    t.date "to"
    t.string "rule"
    t.boolean "embodied"
    t.boolean "disembodied"
    t.integer "total_embodied_day"
    t.integer "total_disembodied_day"
    t.integer "professional_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "type", null: false
    t.string "rank"
    t.string "appointment"
    t.date "date"
    t.boolean "promoted"
    t.integer "professional_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "permanent_i_card_no"
    t.string "temp_i_card_no"
  end

  create_table "sports", force: :cascade do |t|
    t.string "sport_name"
    t.string "level"
    t.date "from"
    t.date "to"
    t.boolean "playing_currently"
    t.boolean "represented_country"
    t.integer "personel_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tech_trade_tests", force: :cascade do |t|
    t.string "hindi"
    t.string "mr"
    t.string "grade"
    t.date "date"
    t.integer "promotion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unit_galleries", force: :cascade do |t|
    t.integer "unit_id"
    t.string "photo"
    t.string "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.text "history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unit_logo"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "army_no"
    t.string "username"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["army_no"], name: "index_users_on_army_no"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wives", force: :cascade do |t|
    t.date "date_of_marriage"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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

ActiveRecord::Schema.define(version: 2018_08_01_160114) do

  create_table "cat_highlights", force: :cascade do |t|
    t.string "breed"
    t.string "highlights"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dog_breed_traits", force: :cascade do |t|
    t.string "breed"
    t.integer "adaptability"
    t.integer "friendliness"
    t.integer "grooming"
    t.integer "trainability"
    t.integer "activityLevel"
    t.integer "goodForApartment"
    t.integer "goodForNoviceOwner"
    t.integer "sensitivity"
    t.integer "toleratesBeingAlone"
    t.integer "toleratesCold"
    t.integer "toleratesHot"
    t.integer "likesFamily"
    t.integer "likesKids"
    t.integer "likesDogs"
    t.integer "likesStrangers"
    t.integer "sheds"
    t.integer "drools"
    t.integer "easyToGroom"
    t.integer "potentialForWeightGain"
    t.integer "size"
    t.integer "easyToTrain"
    t.integer "intelligent"
    t.integer "likesFetch"
    t.integer "preyDrive"
    t.integer "barks"
    t.integer "wanders"
    t.integer "energyLevel"
    t.integer "exerciseIntensity"
    t.integer "exerciseNeeds"
    t.integer "playfulness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dog_highlights", force: :cascade do |t|
    t.string "breed"
    t.string "highlights"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "petfinder_services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.bigint "petfinder_id"
    t.string "city"
    t.string "animal_type"
    t.string "breed"
    t.string "name"
    t.string "gender"
    t.string "size"
    t.string "age"
    t.string "status"
    t.string "photo"
    t.string "description"
    t.string "shelter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["petfinder_id"], name: "index_pets_on_petfinder_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "name"
    t.string "shelter_id"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "province"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shelter_id"], name: "index_shelters_on_shelter_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "query"
    t.boolean "found", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end

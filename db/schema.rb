# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_16_184606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "film_people", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "films_people", force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["film_id"], name: "index_films_people_on_film_id"
    t.index ["person_id"], name: "index_films_people_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.bigint "species_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "home_planet_id"
    t.index ["species_id"], name: "index_people_on_species_id"
  end

  create_table "person_films", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "film_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["film_id"], name: "index_person_films_on_film_id"
    t.index ["person_id"], name: "index_person_films_on_person_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "senator_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "films_people", "films"
  add_foreign_key "films_people", "people"
  add_foreign_key "people", "species"
  add_foreign_key "person_films", "films"
  add_foreign_key "person_films", "people"
end

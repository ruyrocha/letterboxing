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

ActiveRecord::Schema[7.1].define(version: 2024_03_13_171918) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.string "name"
    t.index ["movie_id"], name: "index_actors_on_movie_id"
  end

  create_table "countries", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.string "name"
    t.index ["movie_id"], name: "index_countries_on_movie_id"
  end

  create_table "crews", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.string "role"
    t.string "name"
    t.index ["movie_id"], name: "index_crews_on_movie_id"
  end

  create_table "genres", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.string "name"
    t.index ["movie_id"], name: "index_genres_on_movie_id"
  end

  create_table "languages", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.string "type"
    t.string "name"
    t.index ["movie_id"], name: "index_languages_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.integer "date"
    t.string "tagline"
    t.text "description"
    t.integer "duration"
    t.float "rating"
  end

  create_table "releases", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.string "country"
    t.datetime "date"
    t.string "type"
    t.string "rating"
    t.index ["movie_id"], name: "index_releases_on_movie_id"
  end

  add_foreign_key "actors", "movies"
  add_foreign_key "countries", "movies"
  add_foreign_key "crews", "movies"
  add_foreign_key "genres", "movies"
  add_foreign_key "languages", "movies"
  add_foreign_key "releases", "movies"
end

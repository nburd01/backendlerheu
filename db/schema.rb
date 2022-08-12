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

ActiveRecord::Schema[7.0].define(version: 2022_08_12_083126) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendars", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "description"
    t.bigint "discipline_id", null: false
    t.index ["discipline_id"], name: "index_categories_on_discipline_id"
  end

  create_table "competitions", force: :cascade do |t|
    t.string "name"
    t.bigint "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_competitions_on_team_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "description"
    t.string "discipline_img"
    t.text "discipline_root"
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "matches", force: :cascade do |t|
    t.text "content"
    t.bigint "categorie_id", null: false
    t.bigint "venue_id", null: false
    t.bigint "calendar_id", null: false
    t.bigint "opponent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["calendar_id"], name: "index_matches_on_calendar_id"
    t.index ["categorie_id"], name: "index_matches_on_categorie_id"
    t.index ["opponent_id"], name: "index_matches_on_opponent_id"
    t.index ["venue_id"], name: "index_matches_on_venue_id"
  end

  create_table "opponents", force: :cascade do |t|
    t.string "club"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.date "date_of_birth"
    t.text "player_img"
    t.bigint "categorie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categorie_id"], name: "index_players_on_categorie_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer "score_le_rheu_reglementaire"
    t.integer "score_adversaire_reglementaire"
    t.integer "score_le_rheu_prolongations"
    t.integer "score_adversaire_prolongations"
    t.integer "score_le_rheu_penalties"
    t.integer "score_adversaire_penalties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "locaux"
    t.integer "score_locaux"
    t.string "visiteurs"
    t.integer "score_visiteurs"
    t.string "division"
    t.string "equipe"
    t.string "categorie"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "name"
    t.bigint "categorie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categorie_id"], name: "index_teams_on_categorie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "second_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.string "town"
    t.string "stadium"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "categories", "disciplines"
  add_foreign_key "competitions", "teams"
  add_foreign_key "matches", "calendars"
  add_foreign_key "matches", "categories", column: "categorie_id"
  add_foreign_key "matches", "opponents"
  add_foreign_key "matches", "venues"
  add_foreign_key "players", "categories", column: "categorie_id"
  add_foreign_key "teams", "categories", column: "categorie_id"
end

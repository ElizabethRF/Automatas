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

ActiveRecord::Schema.define(version: 20171127060014) do

  create_table "enfermeras_pacientes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "paciente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_enfermeras_pacientes_on_paciente_id"
    t.index ["user_id"], name: "index_enfermeras_pacientes_on_user_id"
  end

  create_table "interactions", force: :cascade do |t|
    t.integer "simbol_id"
    t.integer "user_id"
    t.integer "paciente_id"
    t.text "comentarios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "checkbox"
    t.index ["paciente_id"], name: "index_interactions_on_paciente_id"
    t.index ["simbol_id"], name: "index_interactions_on_simbol_id"
    t.index ["user_id"], name: "index_interactions_on_user_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "name"
    t.string "lastname1"
    t.string "lastname2"
    t.string "padecimiento"
    t.date "fechaIngreso"
    t.string "sexo"
    t.text "observaciones"
    t.date "fechaDeNacimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "activo"
  end

  create_table "simbols", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname1"
    t.string "lastname2"
    t.string "email"
    t.string "password_digest"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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

ActiveRecord::Schema.define(version: 20180411185913) do

  create_table "funcionarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "celular"
    t.string "telefono"
    t.string "correo"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tipo"
    t.string "ci"
  end

  create_table "locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.text "description"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tipo"
    t.datetime "fecha"
    t.text "evanicial"
    t.string "ciresponsable"
    t.text "resumenacciones"
    t.datetime "fechapreparacion"
    t.text "evaluacion"
    t.text "objetivos"
    t.string "ubicacionpc"
    t.string "ubicacionae"
    t.text "rutadesalida"
    t.text "rutaingreso"
    t.text "mensajedeseguridad"
    t.string "comandante"
  end

  create_table "organizacions", force: :cascade do |t|
    t.string "nombre"
    t.string "numerocontacto"
    t.string "telefono"
    t.string "correo"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recurso_eventos", force: :cascade do |t|
    t.string "solicitado"
    t.datetime "fechapedido"
    t.string "clase"
    t.string "tipo"
    t.datetime "fechallegada"
    t.string "institucion"
    t.string "matricula"
    t.integer "numeropersonas"
    t.boolean "estado"
    t.string "asignadoa"
    t.string "desmovilizadopor"
    t.datetime "fechadesmovilizacion"
    t.text "observaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recursos", force: :cascade do |t|
    t.string "nombre"
    t.string "clase"
    t.string "tipo"
    t.string "matricula"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

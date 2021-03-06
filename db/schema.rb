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

ActiveRecord::Schema.define(version: 20201126141342) do

  create_table "funcionarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "celular"
    t.string "telefono"
    t.string "correo"
    t.boolean "estado", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tipo"
    t.string "ci"
    t.integer "institucions_id"
    t.integer "institucion_id"
    t.boolean "materiaspeligrosas", default: false
    t.boolean "estructurascolapsadas", default: false
    t.boolean "busquedayrescate", default: false
    t.boolean "rescateacuatico", default: false
    t.boolean "manejadordeperros", default: false
    t.boolean "extinciondeincendiosurbanos", default: false
    t.boolean "extinciondeincendiosforestales", default: false
    t.boolean "medico", default: false
    t.boolean "soportebasicodevida", default: false
    t.boolean "asistentedeprimerosauxilios", default: false
    t.boolean "intructorcpi", default: false
    t.integer "user_id"
    t.index ["institucion_id"], name: "index_funcionarios_on_institucion_id"
    t.index ["institucions_id"], name: "index_funcionarios_on_institucions_id"
    t.index ["user_id"], name: "index_funcionarios_on_user_id"
  end

  create_table "has_recursos", force: :cascade do |t|
    t.integer "hojaderecurso_id"
    t.integer "institucion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hojaderecurso_id"], name: "index_has_recursos_on_hojaderecurso_id"
    t.index ["institucion_id"], name: "index_has_recursos_on_institucion_id"
  end

  create_table "hojaderecursos", force: :cascade do |t|
    t.integer "equiposdespleagados"
    t.integer "personasdesplegados"
    t.integer "vehiculosdesplegados"
    t.string "identificadorequipo"
    t.string "nombrequipo"
    t.integer "numeropersonas"
    t.integer "numeroperros"
    t.string "categoriarecursos"
    t.boolean "busquedatecnica"
    t.boolean "recatevehicula"
    t.boolean "rescatevertical"
    t.boolean "atencionPrehospitalaria"
    t.boolean "rescateestrucurascolapsadas"
    t.boolean "incendioestructura"
    t.boolean "apoyoCCOPC"
    t.boolean "apoyologistico"
    t.string "especofiquelogistico"
    t.string "otrascapacidades"
    t.boolean "vehiculo"
    t.string "tipovehiculo"
    t.boolean "comida"
    t.integer "tiempocomida"
    t.date "fechavigenciaformulario"
    t.time "tiemporespesta"
    t.boolean "baseoperaciones"
    t.string "baseoperacionesespecifique"
    t.boolean "capacidadmonitoreo"
    t.integer "transportepersonas"
    t.integer "transporteperrros"
    t.text "equipamiento"
    t.text "equipamientoespecial"
    t.float "gasolina"
    t.float "preciogasolina"
    t.float "diesel"
    t.float "preciodiesel"
    t.boolean "agua"
    t.text "requerimientoespacioenCCO"
    t.text "otrorequerimientologistico"
    t.string "contacto1nombre"
    t.string "contacto1telefono"
    t.string "contacto1correo"
    t.string "contacto2nombre"
    t.string "contacto2celular"
    t.string "contacto2correo"
    t.string "direccionbasedeoperaciones"
    t.string "basedeoperacionestelefono"
    t.string "frecuenciaradiobase"
    t.string "cordenadasbasedecimal"
    t.string "cordenadasbaseotroformato"
    t.date "formulariocompletadofecha"
    t.string "nombre"
    t.string "gradoycargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "location_id"
    t.integer "locations_id"
    t.index ["location_id"], name: "index_hojaderecursos_on_location_id"
    t.index ["locations_id"], name: "index_hojaderecursos_on_locations_id"
    t.index ["user_id"], name: "index_hojaderecursos_on_user_id"
  end

  create_table "institucions", force: :cascade do |t|
    t.string "nombre"
    t.string "personaencargada"
    t.string "cargo"
    t.string "direccion"
    t.string "departamento"
    t.string "municipio"
    t.string "localidad"
    t.string "telefono"
    t.string "fax"
    t.string "paginweb"
    t.string "nombrecontacto"
    t.string "cargi"
    t.string "tiempoencargo"
    t.string "celular"
    t.string "email"
    t.string "institucionpublica"
    t.text "detalle"
    t.boolean "institucionprivada"
    t.text "detalleprivado"
    t.string "sinfinesdelucro"
    t.text "detallesinfinesdelucro"
    t.boolean "grupovoluntario"
    t.boolean "coe"
    t.boolean "coenacional"
    t.boolean "coedepartalemtal"
    t.boolean "coemunicipal"
    t.boolean "mesassectoriales"
    t.boolean "salud"
    t.boolean "educacion"
    t.boolean "aguaysaneamiento"
    t.boolean "seguridadalimentaria"
    t.boolean "gobernabilidadproteccion"
    t.boolean "albergues"
    t.boolean "recuperacion"
    t.boolean "comisionesdepartales"
    t.text "detallecomisiones"
    t.boolean "comisionesmunicipalesCOEM"
    t.text "detallesCOEM"
    t.boolean "dgr"
    t.boolean "ugr"
    t.boolean "unete"
    t.boolean "grus"
    t.boolean "consorciodeong"
    t.boolean "observatorios"
    t.text "detallesobservatorio"
    t.boolean "local"
    t.text "detalleslocal"
    t.boolean "otros"
    t.text "otrosdetalle"
    t.boolean "mandatogestionriesgo"
    t.boolean "mandatoseguridad"
    t.boolean "mandatootro"
    t.text "mandatodetalle"
    t.text "especialidadesmandato"
    t.boolean "serviciotransporte"
    t.boolean "serviciobusquedaperros"
    t.boolean "serviciotelecomunicaciones"
    t.boolean "serviciosincendiosurbanos"
    t.boolean "servicioevaluacion"
    t.boolean "servicioincendioforestal"
    t.boolean "serviciosaludysaneamiento"
    t.boolean "serviciomanejomateriales"
    t.boolean "serviciobusquedayrescate"
    t.boolean "serviciospublicos"
    t.boolean "serviciobusquedayrescateenaltura"
    t.boolean "servicioseguridad"
    t.boolean "serviciosalvamiento"
    t.boolean "salvamientoacuatico"
    t.boolean "manejogeneral"
    t.text "serviciodetalle"
    t.boolean "respuestanaturales"
    t.boolean "respuestahidrometeorologicas"
    t.boolean "respuestainundaciones"
    t.boolean "respuestariadas"
    t.boolean "respuestavientosfuertes"
    t.boolean "respuestageologicas"
    t.boolean "respuestadeslizamiento"
    t.boolean "respuestaderrumber"
    t.boolean "respuestasismos"
    t.boolean "respuestaotros"
    t.text "respuestadetalle"
    t.boolean "socionatural"
    t.boolean "socioambiental"
    t.boolean "socioincendio"
    t.boolean "sociootro"
    t.text "sociodetalle"
    t.text "antropicas"
    t.boolean "antropicasincendios"
    t.boolean "antropicasotros"
    t.boolean "otrossocios"
    t.text "otrosdetallessocios"
    t.text "eventosfrecuentes"
    t.boolean "plandecontingencia"
    t.boolean "planencasosi"
    t.text "tareasprotocolo"
    t.boolean "porcentajerespuesta"
    t.boolean "plandeemergencia"
    t.boolean "encasosiemergencia"
    t.text "tareasemergencia"
    t.boolean "protocolodeaccion"
    t.boolean "encasosiprotocolo"
    t.boolean "areaflujo"
    t.boolean "arealogistica"
    t.boolean "areacomunicaciones"
    t.boolean "areatransporte"
    t.boolean "areaevaluaciondemergencia"
    t.boolean "areadocumentacion"
    t.boolean "areaemergenciamedica"
    t.boolean "areamovilizacion"
    t.string "areaoperaciones"
    t.boolean "areaseguridad"
    t.boolean "areaotros"
    t.text "areadetalle"
    t.boolean "activacionesautomaticas"
    t.boolean "medioradio"
    t.boolean "mediotv"
    t.boolean "mediofrecuencia"
    t.boolean "mediollamadas"
    t.text "mediosdetalles"
    t.boolean "requerimientosuperios"
    t.text "requerimientosuperiosdetalle"
    t.text "requerimientootrodetalle"
    t.text "observaciones"
    t.boolean "situacionesactual"
    t.boolean "trabajosiniciales"
    t.boolean "caracteristicasestructurales"
    t.boolean "consideracionespeciales"
    t.boolean "estadotiempo"
    t.boolean "mapasderiesgo"
    t.boolean "seguridadyproteccion"
    t.boolean "planosdellugar"
    t.boolean "evacuaionemergencia"
    t.boolean "estadisticas"
    t.boolean "temasdesalud"
    t.boolean "accionotro"
    t.text "acciondetalle"
    t.boolean "capacitadosincidentes"
    t.text "capacitadosobservaciones"
    t.text "coberturageogracia"
    t.text "brazosoperativosareas"
    t.integer "recursoadministrativo"
    t.boolean "recursosoperativo"
    t.integer "recursosoperativopersonas"
    t.boolean "operativoactivo"
    t.integer "operativoactivopersonas"
    t.boolean "pasivosenreserva"
    t.integer "pasivosenreservapersonas"
    t.boolean "primap"
    t.integer "primapersonas"
    t.boolean "crecl"
    t.integer "creclpersonas"
    t.boolean "brec"
    t.integer "brecpersonas"
    t.boolean "especidalidadrescateactuatico"
    t.integer "especialidadrescatepersonas"
    t.boolean "manejadorperros"
    t.integer "manejadorperrospersona"
    t.boolean "cbsci"
    t.integer "cbscipersonas"
    t.boolean "extincionincendiosurbanos"
    t.integer "extincionserviciosurbanospersonas"
    t.boolean "incendiosforestales"
    t.integer "incendiosforestalespersonas"
    t.boolean "medicos"
    t.integer "numeromedicos"
    t.integer "sbv"
    t.boolean "appa"
    t.integer "appapersonas"
    t.boolean "cpi"
    t.integer "cpipersonas"
    t.boolean "especilidadcomunicaciones"
    t.integer "especidalidadcomunicacionespersonas"
    t.boolean "especialidadlogistica"
    t.integer "especialidadlogicasticapersonas"
    t.integer "ambulanciascantidad"
    t.boolean "ambulanciasestado"
    t.integer "ambulanciascapacidadpersonas"
    t.text "ambulanciasobservaciones"
    t.integer "transliviano"
    t.boolean "translivianoestado"
    t.integer "translivianopersonas"
    t.text "translivianobservaciones"
    t.integer "transpesado"
    t.boolean "transpesadoestado"
    t.integer "transpesadopersonas"
    t.text "transpesadosobservaciones"
    t.integer "patrullas"
    t.boolean "patrullasestado"
    t.integer "patrullaspersonas"
    t.text "patrullasobservaciones"
    t.integer "carrosbomberos"
    t.boolean "carrosbomberosestado"
    t.integer "carrosbomberospersonas"
    t.text "carrosbomberosobservaciones"
    t.integer "cisternas"
    t.boolean "cisternasestado"
    t.integer "cisternaspersonas"
    t.text "cisternasobservaciones"
    t.integer "maquinariapesada"
    t.boolean "maquinariapesadaestado"
    t.integer "maquinariapesadapersonas"
    t.string "maquinariapesadaobservaciones"
    t.boolean "equiporadios"
    t.text "equiporadioobservaciones"
    t.integer "comunicacionesatelital"
    t.boolean "comunicacionsatelital"
    t.text "satelitalobservaciones"
    t.integer "gps"
    t.boolean "gpsestado"
    t.text "gpsobservaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_institucions_on_user_id"
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
    t.integer "user_id"
    t.index ["user_id"], name: "index_locations_on_user_id"
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
    t.integer "location_id"
    t.index ["location_id"], name: "index_recurso_eventos_on_location_id"
  end

  create_table "recursos", force: :cascade do |t|
    t.string "nombre"
    t.string "clase"
    t.string "tipo"
    t.string "matricula"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "location_id"
    t.boolean "ambulancia", default: false
    t.boolean "transporteliviano", default: false
    t.boolean "trnsportepesado", default: false
    t.boolean "patrullas", default: false
    t.boolean "carrosbomberos", default: false
    t.boolean "cisternas", default: false
    t.boolean "maquinariapesada", default: false
    t.integer "cantidadpersonas"
    t.string "observaciones"
    t.boolean "estadoactual", default: false
    t.integer "institucion_id"
    t.integer "user_id"
    t.index ["institucion_id"], name: "index_recursos_on_institucion_id"
    t.index ["location_id"], name: "index_recursos_on_location_id"
    t.index ["user_id"], name: "index_recursos_on_user_id"
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
    t.boolean "tipo", default: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

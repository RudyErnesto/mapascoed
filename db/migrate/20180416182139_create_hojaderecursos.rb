class CreateHojaderecursos < ActiveRecord::Migration[5.1]
  def change
    create_table :hojaderecursos do |t|
      t.integer :equiposdespleagados
      t.integer :personasdesplegados
      t.integer :vehiculosdesplegados
      t.string :identificadorequipo
      t.string :nombrequipo
      t.integer :numeropersonas
      t.integer :numeroperros
      t.string :categoriarecursos
      t.boolean :busquedatecnica
      t.boolean :recatevehicula
      t.boolean :rescatevertical
      t.boolean :atencionPrehospitalaria
      t.boolean :rescateestrucurascolapsadas
      t.boolean :incendioestructura
      t.boolean :apoyoCCOPC
      t.boolean :apoyologistico
      t.string :especofiquelogistico
      t.string :otrascapacidades
      t.boolean :vehiculo
      t.string :tipovehiculo
      t.boolean :comida
      t.integer :tiempocomida
      t.date :fechavigenciaformulario
      t.time :tiemporespesta
      t.boolean :baseoperaciones
      t.string :baseoperacionesespecifique
      t.boolean :capacidadmonitoreo
      t.integer :transportepersonas
      t.integer :transporteperrros
      t.text :equipamiento
      t.text :equipamientoespecial
      t.float :gasolina
      t.float :preciogasolina
      t.float :diesel
      t.float :preciodiesel
      t.boolean :comida
      t.boolean :agua
      t.text :requerimientoespacioenCCO
      t.text :otrorequerimientologistico
      t.string :contacto1nombre
      t.string :contacto1telefono
      t.string :contacto1correo
      t.string :contacto2nombre
      t.string :contacto2celular
      t.string :contacto2correo
      t.string :direccionbasedeoperaciones
      t.string :basedeoperacionestelefono
      t.string :frecuenciaradiobase
      t.string :cordenadasbasedecimal
      t.string :cordenadasbaseotroformato
      t.date :formulariocompletadofecha
      t.string :nombre
      t.string :gradoycargo

      t.timestamps
    end
  end
end

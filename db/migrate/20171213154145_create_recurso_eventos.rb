class CreateRecursoEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :recurso_eventos do |t|
      t.string :solicitado
      t.datetime :fechapedido
      t.string :clase
      t.string :tipo
      t.datetime :fechallegada
      t.string :institucion
      t.string :matricula
      t.integer :numeropersonas
      t.boolean :estado
      t.string :asignadoa
      t.string :desmovilizadopor
      t.datetime :fechadesmovilizacion
      t.text :observaciones

      t.timestamps
    end
  end
end

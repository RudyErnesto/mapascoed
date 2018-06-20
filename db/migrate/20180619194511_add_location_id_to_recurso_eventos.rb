class AddLocationIdToRecursoEventos < ActiveRecord::Migration[5.1]
  def change
    add_reference :recurso_eventos, :location, foreign_key: true
  end
end

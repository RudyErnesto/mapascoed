class CreateHasRecursos < ActiveRecord::Migration[5.1]
  def change
    create_table :has_recursos do |t|
      t.references :hojaderecurso, foreign_key: true
      t.references :institucion, foreign_key: true

      t.timestamps
    end
  end
end

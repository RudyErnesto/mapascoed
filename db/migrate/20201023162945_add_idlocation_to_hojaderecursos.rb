class AddIdlocationToHojaderecursos < ActiveRecord::Migration[5.1]
  def change
    add_reference :hojaderecursos, :locations, foreign_key: true
  end
end

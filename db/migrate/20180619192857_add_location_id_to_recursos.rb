class AddLocationIdToRecursos < ActiveRecord::Migration[5.1]
  def change
    add_reference :recursos, :location, foreign_key: true
  end
end

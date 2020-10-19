class AddIdinstitucionsToRecursos < ActiveRecord::Migration[5.1]
  def change
    add_reference :recursos, :institucion, foreign_key: true
  end
end

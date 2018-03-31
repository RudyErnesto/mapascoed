class CreateRecursos < ActiveRecord::Migration[5.1]
  def change
    create_table :recursos do |t|
      t.string :nombre
      t.string :clase
      t.string :tipo
      t.string :matricula
      t.string :estado

      t.timestamps
    end
  end
end

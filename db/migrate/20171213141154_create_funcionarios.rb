class CreateFuncionarios < ActiveRecord::Migration[5.1]
  def change
    create_table :funcionarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :celular
      t.string :telefono
      t.string :correo
      t.boolean :estado,  default: false

      t.timestamps
    end
  end
end

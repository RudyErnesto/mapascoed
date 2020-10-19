class AddValoresrecursosToRecursos < ActiveRecord::Migration[5.1]
  def change
    add_column :recursos, :ambulancia, :boolean , default: false
    add_column :recursos, :transporteliviano, :boolean , default: false
    add_column :recursos, :trnsportepesado, :boolean, default: false
    add_column :recursos, :patrullas, :boolean, default: false
    add_column :recursos, :carrosbomberos, :boolean, default: false
    add_column :recursos, :cisternas, :boolean, default: false
    add_column :recursos, :maquinariapesada, :boolean, default: false
    add_column :recursos, :cantidadpersonas, :integer
    add_column :recursos, :observaciones, :string
    add_column :recursos, :estadoactual, :boolean , default: false
  end
end

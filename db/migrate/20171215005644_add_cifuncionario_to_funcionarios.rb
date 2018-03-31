class AddCifuncionarioToFuncionarios < ActiveRecord::Migration[5.1]
  def change
    add_column :funcionarios, :tipo, :string
  end
end

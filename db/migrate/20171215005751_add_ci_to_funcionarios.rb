class AddCiToFuncionarios < ActiveRecord::Migration[5.1]
  def change
    add_column :funcionarios, :ci, :string
  end
end

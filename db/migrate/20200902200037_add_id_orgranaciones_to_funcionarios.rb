class AddIdOrgranacionesToFuncionarios < ActiveRecord::Migration[5.1]
  def change
    add_reference :funcionarios, :institucions, foreign_key: true
  end
end

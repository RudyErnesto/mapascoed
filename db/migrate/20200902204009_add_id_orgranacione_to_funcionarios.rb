class AddIdOrgranacioneToFuncionarios < ActiveRecord::Migration[5.1]
  def change
    add_reference :funcionarios, :institucion, foreign_key: true
  end
end

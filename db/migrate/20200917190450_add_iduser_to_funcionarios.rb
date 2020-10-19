class AddIduserToFuncionarios < ActiveRecord::Migration[5.1]
  def change
    add_reference :funcionarios, :user, foreign_key: true
  end
end

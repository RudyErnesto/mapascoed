class AddIduserToRecursos < ActiveRecord::Migration[5.1]
  def change
    add_reference :recursos, :user, foreign_key: true
  end
end

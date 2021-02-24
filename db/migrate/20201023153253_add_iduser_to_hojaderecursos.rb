class AddIduserToHojaderecursos < ActiveRecord::Migration[5.1]
  def change
    add_reference :hojaderecursos, :user, foreign_key: true
    add_reference :hojaderecursos, :location, foreign_key: true
  end
end

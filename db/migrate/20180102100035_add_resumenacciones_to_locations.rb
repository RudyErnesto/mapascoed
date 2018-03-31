class AddResumenaccionesToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :resumenacciones, :text
  end
end

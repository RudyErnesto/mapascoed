class AddCiresponsableToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :ciresponsable, :string
  end
end

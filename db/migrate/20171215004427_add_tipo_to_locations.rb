class AddTipoToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :tipo, :string
  end
end

class AddDatosToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :fechapreparacion, :datetime
    add_column :locations, :evaluacion, :text
    add_column :locations, :objetivos, :text
    add_column :locations, :ubicacionpc, :string
    add_column :locations, :ubicacionae, :string
    add_column :locations, :rutadesalida, :text
    add_column :locations, :rutaingreso, :text
    add_column :locations, :mensajedeseguridad, :text
    add_column :locations, :comandante, :string
  end
end

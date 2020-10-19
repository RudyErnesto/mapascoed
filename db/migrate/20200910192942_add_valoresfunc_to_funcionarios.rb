class AddValoresfuncToFuncionarios < ActiveRecord::Migration[5.1]
  def change
    add_column :funcionarios, :materiaspeligrosas, :boolean, default: false
    add_column :funcionarios, :estructurascolapsadas, :boolean, default: false
    add_column :funcionarios, :busquedayrescate, :boolean, default: false
    add_column :funcionarios, :rescateacuatico, :boolean, default: false
    add_column :funcionarios, :manejadordeperros, :boolean, default: false
    add_column :funcionarios, :extinciondeincendiosurbanos, :boolean, default: false
    add_column :funcionarios, :extinciondeincendiosforestales, :boolean, default: false
    add_column :funcionarios, :medico, :boolean, default: false
    add_column :funcionarios, :soportebasicodevida, :boolean, default: false
    add_column :funcionarios, :asistentedeprimerosauxilios, :boolean, default: false
    add_column :funcionarios, :intructorcpi, :boolean, default: false
  end
end

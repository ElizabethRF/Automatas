class AddActivoToPacientes < ActiveRecord::Migration[5.1]
  def change
    add_column :pacientes, :activo, :boolean
  end
end

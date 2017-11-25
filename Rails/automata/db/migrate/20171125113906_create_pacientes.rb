class CreatePacientes < ActiveRecord::Migration[5.1]
  def change
    create_table :pacientes do |t|
      t.string :name
      t.string :lastname1
      t.string :lastname2
      t.string :padecimiento
      t.date :fechaIngreso
      t.string :sexo
      t.text :observaciones
      t.date :fechaDeNacimiento

      t.timestamps
    end
  end
end

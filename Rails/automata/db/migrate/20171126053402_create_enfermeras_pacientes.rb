class CreateEnfermerasPacientes < ActiveRecord::Migration[5.1]
  def change
    create_table :enfermeras_pacientes do |t|
    	t.references :enfermera, foreign_key: true
    	t.references :paciente, foreign_key: true
    end
  end
end

json.extract! paciente, :id, :name, :lastname1, :lastname2, :padecimiento, :fechaIngreso, :sexo, :observaciones, :fechaDeNacimiento, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)

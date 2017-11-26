class Paciente < ApplicationRecord
	has_many :interactions
	validates :name, presence: true
    validates :lastname1, presence: true
    validates :lastname2, presence: true
    validates :sexo, presence: true
    validates :fechaIngreso, presence: true
    validates :padecimiento,presence:true
    validates :fechaDeNacimiento, presence: true
end

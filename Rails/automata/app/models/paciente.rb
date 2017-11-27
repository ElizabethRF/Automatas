class Paciente < ApplicationRecord
	has_many :interactions
  has_many :enfermeras_pacientes
  has_many :users, through: :enfermeras_pacientes
	validates :name, presence: true
    validates :lastname1, presence: true
    validates :lastname2, presence: true
    validates :sexo, presence: true
    validates :fechaIngreso, presence: true
    validates :padecimiento,presence:true
    validates :fechaDeNacimiento, presence: true
      
    def receipt
      Receipts::Receipt.new(
      id: id,
      product: "Automata",
      company: {
        name: "Automatas.",
        address: "",
        email: "",
        
      },
      line_items: [
        ["Date",           created_at.to_s],
        ["Nombre", "#{name} (#{lastname1})"],
        ["Sexo",        "#{sexo}"],
        ["Fecha de ingreso",        "#{fechaIngreso}"],
        ["padecimiento",        "#{padecimiento}"],
        ["Fecha de nacimiento",        "#{fechaDeNacimiento}"],
        ["Simbolos utilizados recientemente",
           "#{
            interactions.map do |i|
            i.simbol.name
          end
          }\n"
        ]
      ]
    )
  end 
    
    
end

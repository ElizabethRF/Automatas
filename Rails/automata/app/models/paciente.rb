class Paciente < ApplicationRecord
	has_many :interactions
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
        ["Simbolos y comentarios utilizados",
           "#{interactions.map do |i|
              i.simbol.name + " | " + i.simbol.detail
          end}\n"
        ]
      ]
    )
  end 
    
    
end

class EnfermerasPaciente < ApplicationRecord
  belongs_to :user
  belongs_to :paciente
end

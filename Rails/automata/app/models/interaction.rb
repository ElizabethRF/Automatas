class Interaction < ApplicationRecord
  belongs_to :simbol
  belongs_to :user
  belongs_to :paciente
end

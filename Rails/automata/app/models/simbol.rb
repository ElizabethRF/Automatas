class Simbol < ApplicationRecord
	validates :name, presence: true
    validates :picture, presence: true
end

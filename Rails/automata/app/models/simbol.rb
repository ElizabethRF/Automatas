class Simbol < ApplicationRecord
	validates :name, presence: true
    validates :picture, presence: true
    mount_uploader :picture, PictureUploader
    validate :picture_size

	private
		def picture_size
			if picture.size > 5.megabytes
			errors.add(:picture, "el tamaño de la imagen debe ser menor a 5MB")
		end
	end
end

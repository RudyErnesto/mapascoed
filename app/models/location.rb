class Location < ApplicationRecord
	geocoded_by :address
	after_validation :geocode   
	belongs_to :user 
	has_many :recurso_eventos
end

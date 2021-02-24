class Location < ApplicationRecord
	geocoded_by :address
	after_validation :geocode   
	belongs_to :user 
	has_many :hojaderecursos
	after_create :send_mail


	
	def send_mail
    	LocationMailer.new_location(self).deliver_later	
	end
end

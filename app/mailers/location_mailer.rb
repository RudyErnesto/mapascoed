class LocationMailer < ApplicationMailer
	def new_location(location)
		@location = location
		
		User.all.each do |user|
			mail(to: user.email, subject: "Nueva Emergencia")
		end
		
	end
end

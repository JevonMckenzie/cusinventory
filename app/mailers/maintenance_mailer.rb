class MaintenanceMailer < ApplicationMailer
	default from: 'jevonmmckenzie@gmail.com'

	def maintenance_email(maintenance)
		@maintenance = maintenance 
		  mail(to: ['bellcus00@gmail.com'], subject: "A Post Modification Notification has arrived. Please see summary of details.")
	end

end

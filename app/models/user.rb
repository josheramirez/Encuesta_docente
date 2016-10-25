class User < ActiveRecord::Base


has_secure_password
	def self.search(query)
		where("rut like ?", "%#{query}%")	
	end

	def activar
		self.update_attributes(activated:true)	
	end
end

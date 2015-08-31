class Product < ActiveRecord::Base
	has_many :reviews, :foreign_key => :usb
	
	def self.search(search)
		if search
			self.where("name LIKE ? or usb like ?", "%#{search}%", "%#{search}%")
		else
			self.all
		end
	end
	end

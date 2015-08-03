class Product < ActiveRecord::Base
	has_many :reviews, :foreign_key => :usb
end

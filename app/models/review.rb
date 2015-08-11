class Review < ActiveRecord::Base
	belongs_to :product, :foreign_key => :usb
end

class IndexColumns < ActiveRecord::Migration
  def change
	add_index :products, :usb
	add_index :reviews, :usb
  end
end

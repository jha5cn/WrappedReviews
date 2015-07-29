class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :usb
      t.string :name
      t.string :brand

      t.timestamps
    end
  end
end

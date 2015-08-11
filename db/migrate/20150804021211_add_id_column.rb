class AddIdColumn < ActiveRecord::Migration
  def change
	add_column :reviews, :product_id, :integer
  end
end

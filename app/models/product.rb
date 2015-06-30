class Product < ActiveRecord::Base
	belongs_to :category
	scope :sort_by_created_at, -> {order("created_at DESC")}
	scope :order_by_create_at,  -> { order("products.created_at DESC")}

	def self.order_by_create_at
		order("products.created_at DESC")
	end
end

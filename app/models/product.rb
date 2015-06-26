class Product < ActiveRecord::Base
	belongs_to :category
	scope :order_by_create_at,  -> { order("products.created_at ASC") }
	def self.order_by_create_at
		order("books.created_at ASC")
	end
end

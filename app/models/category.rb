class Category < ActiveRecord::Base
	has_many :products
	scope :by_category, ->(cat){where(category: cat)}
end

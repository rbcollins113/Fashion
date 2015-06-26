class Category < ActiveRecord::Base
	has_many :products
	scope :sorted, ->{order(:id)}
	scope :sort_by_name, ->{order(:id)}
	scope :by_category, ->(cat){where(category: cat)}
end

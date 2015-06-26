class CategoriesController < ApplicationController
	def index
		@all_categories = Category.sort_by_name
	end

	def show
		@category = Category.find params[:id]
    	redirect_to root_path and return if @category.nil?
    	@products = Product.by_category(@category).sort_by_name
	end
end
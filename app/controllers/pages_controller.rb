class PagesController < ApplicationController
  def home
  	@products = Product.sort_by_created_at.limit(6)
  end

  def about
  end

  def contact
  end
end

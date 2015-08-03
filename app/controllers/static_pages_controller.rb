class StaticPagesController < ApplicationController
  def home
	@review = Review.last(5).reverse
	@product = Product.last(5).reverse
  end
end

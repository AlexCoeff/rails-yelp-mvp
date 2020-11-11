class ReviewsController < ApplicationController
  # def index
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @reviews = Review.all
  # end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    resto = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant_id = resto.id
    @review.save
    redirect_to restaurant_path(resto.id)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

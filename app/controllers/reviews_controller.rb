class ReviewsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

class Admin::ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
    redirect_to admin_restaurant_path(@review.restaurant)
  end

  def edit # GET /restaurants/:id/edit
    #@restaurant = Restaurant.find(params[:id])
  end

  def update # PATCH /restaurants/:id
    @review = Rewiew.find(params[:id])
    @review.update(review_params)

    redirect_to admin_restaurant_path(@review.restaurant)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to admin_restaurants_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end

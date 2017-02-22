class Admin::RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index # GET /restaurants
    @restaurants = Restaurant.all
  end

  def show # GET /restaurants/:id
    #@restaurant = Restaurant.find(params[:id])
  end

  def new # GET /restaurants/new
    @restaurant = Restaurant.new
  end

  def create # POST /restaurants
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to admin_restaurant_path(@restaurant)
  end

  def edit # GET /restaurants/:id/edit
    #@restaurant = Restaurant.find(params[:id])
  end

  def update # PATCH /restaurants/:id
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)

    redirect_to admin_restaurant_path(@restaurant)
  end

  def destroy # DELETE /restaurants/:id
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to admin_restaurants_path
  end

  private

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end

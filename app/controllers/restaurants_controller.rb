class RestaurantsController < ApplicationController

  before_action :find_restaurant, only: [:show]

     def index
        @restaurants = Restaurant.all
        end

        def show
          @restaurant = Restaurant.find(params[:id])
        end

        def new
          @restaurant = Restaurant.new
        end

        def create
          Restaurant.create(task_params)
          redirect_to restaurants_path
        end

        def edit
        end

        def update
          @restaurant.update(task_params)
          redirect_to restaurant_path(@restaurant)
        end

        def destroy
          @restaurant.destroy
          redirect_to restaurants_path
        end

        private

        def restaurant_params
          params.require(:restaurant).permit(:name, :address, :phone_number, :category)
        end

        def find_restaurant
          @restaurant = Restaurant.find(params[:id])
        end

    end

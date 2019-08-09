class RestaurantsController < ApplicationController
  get '/' do
    @restaurants = Restaurant.all
    erb :'restaurants/index'
  end

  get '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    @comments = @restaurant.comments.includes(:user)
    erb :'restaurants/restaurant'
  end
end

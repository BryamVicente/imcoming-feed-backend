class Api::V1::FavoritesController < ApplicationController

    skip_before_action :authorized, only: [:create, :index]

    def index 
        favorites = Favorite.all 
        render json: favorites
    end 

    def show 
        favorite = Favorite.find(params[:id])
        render json: favorite
    end 

    def create
        byebug
    end 

    def update
        byebug
    end 

    def destroy 
        byebug
    end 

    private 

    def favorite_params 
        params.require(:favorite).permit(:user_id, :name )
    end 

end 


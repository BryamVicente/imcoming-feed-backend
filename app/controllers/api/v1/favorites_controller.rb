class Api::V1::FavoritesController < ApplicationController

    def index 
        favorites = Favorite.all 
        render json: favorites
    end 

    def show 
        favorite = Favorite.find(params[:id])
        render json: favorite
    end 

    # def create
    #     byebug
    #     # favorite = Favorite.create!(favorite_params)
    #     # render json: favorite
    # end 

    # def update
    #     # byebug
    #     # favorite = Favorite.find(params[:id])
    #     # favorite.update(favorite_params)
    #     # render json: favorite 
    # end 

    # def destroy 
    #     byebug
    # end 

    # private 

    # def favorite_params 
    #     params.require(:favorite).permit(:user_id, :name )
    # end 

    # def index
    #     favorites = Favorite.all
    #     render json: favorites
    # end 

    # def show
    #     favorite = Favorite.find(params[:id])
    #     render json: favorite
    # end 

    # def create
    #     # byebug
    #     favorite = Favorite.create!(favorite_params)
    #     render json: favorite 
    # end 

    # def update
    #     # byebug
    #     favorite = Favorite.find(params[:id])
    #     favorite.update(favorite_params)
    #     render json: favorite
    # end 

    # def destroy
    #     # byebug
    #     favorite = Favorite.find(params[:id])
    #     favorite.destroy
    #     render json: favorite
    # end 

    # private

    # def favorite_params
    #     params.require(:favorite).permit(:user_id, :name)
    # end 
    

end

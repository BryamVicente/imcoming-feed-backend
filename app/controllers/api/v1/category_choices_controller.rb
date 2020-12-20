class Api::V1::CategoryChoicesController < ApplicationController

    def index 
        category_choices = CategoryChoice.all
        render json: category_choices
    end 

    def show 
        category_choice = CategoryChoice.find(params[:id])
        render json: category_choice
    end 
end

class Api::V1::CategoryChoicesController < ApplicationController

    skip_before_action :authorized, only: [:show, :index]

    def index 
        category_choices = CategoryChoice.all
        render json: category_choices
    end 

    def show 
        category_choice = CategoryChoice.find(params[:id])
        render json: category_choice
    end 
end

class Api::V1::InterestsController < ApplicationController

    skip_before_action :authorized, only: [:show, :index]

    def index 
        interests = Interest.all 
        render json: interests
    end 

    def show 
        interest = Interest.find(params[:id])
        render json: interest
    end 

end

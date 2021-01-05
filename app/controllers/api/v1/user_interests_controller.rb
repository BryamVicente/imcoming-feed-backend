class Api::V1::UserInterestsController < ApplicationController

    skip_before_action :authorized, only: [:show, :index]

    def index 
        user_interests = UserInterest.all 
        render json: user_interests
    end 

    def show 
        user_interest = UserInterest.find(params[:id])
        render json: user_interest
    end 
end

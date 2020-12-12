class Api::V1::ArticlesController < ApplicationController

    def index 
        articles = Article.all
        render json: articles
    end 

    def show 
        article = Article.find(params[:id])
        render json: article 
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



end

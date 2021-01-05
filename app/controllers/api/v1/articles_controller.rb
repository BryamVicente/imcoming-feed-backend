class Api::V1::ArticlesController < ApplicationController

    skip_before_action :authorized, only: [:show, :index]

    def index 
        articles = Article.all
        render json: articles
    end 

    def show 
        article = Article.find(params[:id])
        render json: article 
    end 
end

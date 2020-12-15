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
        # byebug
        article = Article.create!(article_params)
        render json: article 
    end 

    def update
        # byebug
        article = Article.find(params[:id])
        article.update(article_params)
        render json: article
    end 

    def destroy
        # byebug
        article = Article.find(params[:id])
        article.destroy
        render json: article
    end 

    private

    def article_params
        params.require(:article).permit(:title, :category, :author, :description, :url, :urlToImage, :content, :favorite_id)
    end 



end

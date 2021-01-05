class Api::V1::FavoriteArticlesController < ApplicationController

    skip_before_action :authorized 

    def index
        favorite_aricles = FavoriteArticle.all
        render json: favorite_aricles
    end 

    def show
        favorite_article = FavoriteArticle.find(params[:id])
        render json: favorite_article
    end 

    def create
        # byebug
        favorite_article = FavoriteArticle.create!(favorite_article_params)
        render json: favorite_article 
    end 

    def update
        # byebug
        favorite_article = FavoriteArticle.find(params[:id])
        favorite_article.update(favorite_article_params)
        render json: favorite_article
    end 

    def destroy
        # byebug
        favorite_article = FavoriteArticle.find(params[:id])
        favorite_article.destroy
        render json: favorite_article
    end 

    private

    def favorite_article_params
        params.require(:favorite_article).permit(:article_id, :favorite_id, :review)
    end 
end

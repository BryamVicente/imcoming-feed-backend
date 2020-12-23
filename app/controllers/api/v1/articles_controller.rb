class Api::V1::ArticlesController < ApplicationController

    def index 
        # articles = Article.paginate(page: params[:page], per_page: 40)
        # articles = Article.paginate(:page => params[:page])
        articles = Article.all
        render json: articles
        # render json: Article.all, each_serializer: ArticleSerializer, root: false, page: articles.current_page, pages: articles.total_pages
        # render json: {
        #     articles: articles,
        #     page: articles.current_page,
        #     pages: articles.total_pages
        # }

    end 

  
    def show 
        article = Article.find(params[:id])
        render json: article 
     end 

    # def create
    #     # byebug
    #     article = Article.create!(article_params)
    #     render json: article 
    # end 

    # def update
    #     # byebug
    #     article = Article.find(params[:id])
    #     article.update(article_params)
    #     render json: article
    # end 

    # def destroy
    #     # byebug
    #     article = Article.find(params[:id])
    #     article.destroy
    #     render json: article
    # end 

    # private

    # def article_params
    #     params.require(:article).permit(:title, :category, :author, :description, :url, :urlToImage, :content)
    # end 



end

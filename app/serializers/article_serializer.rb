class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :source, :author, :description, :url, :urlToImage, :content, :favorite_articles, :favorites, :category_choice

  # has_many :favorite_articles 
end

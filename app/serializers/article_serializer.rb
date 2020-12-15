class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :source, :author, :description, :url, :urlToImage, :content, :favorite

  # has_many :favorite_articles 
end

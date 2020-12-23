class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :source, :author, :description, :url, :urlToImage, :content, :favorite_articles, :favorites, :category_choice

  # belongs_to :category_choice, serializer: CategoryChoiceSerializer

end

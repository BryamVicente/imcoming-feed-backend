class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user, :favorite_articles

  has_many :favorite_articles, serializer: FavoriteArticleSerializer

end



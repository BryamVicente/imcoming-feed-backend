class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user, :favorite_articles
end

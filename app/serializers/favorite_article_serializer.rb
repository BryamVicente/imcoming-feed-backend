class FavoriteArticleSerializer < ActiveModel::Serializer
  attributes :id, :article, :favorite, :review
end

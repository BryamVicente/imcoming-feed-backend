class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user, :articles
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :favorites, :interests, :user_interests, :image
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :favorites 
end

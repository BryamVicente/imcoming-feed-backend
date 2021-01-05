class Favorite < ApplicationRecord
    belongs_to :user
    has_many :favorite_articles 
    has_many :articles, through: :favorite_articles
end

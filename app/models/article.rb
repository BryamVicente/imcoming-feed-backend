class Article < ApplicationRecord
    # has_many :favorite_articles
    # has_many :favorites, through: :favorite_articles 
    belongs_to :favorite

end 

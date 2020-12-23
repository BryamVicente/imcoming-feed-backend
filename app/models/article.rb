class Article < ApplicationRecord
    has_many :favorite_articles
    has_many :favorites, through: :favorite_articles 
    belongs_to :category_choice
    # accepts_nested_attributes_for :favorites

    self.per_page = 10
end 

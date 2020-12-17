class FavoriteArticle < ApplicationRecord
    belongs_to :article
    belongs_to :favorite

#     accepts_nested_attributes_for :favorite
#     accepts_nested_attributes_for :article 
end

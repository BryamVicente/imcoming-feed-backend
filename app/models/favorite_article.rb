class FavoriteArticle < ApplicationRecord
    belongs_to :article
    belongs_to :favorite
end

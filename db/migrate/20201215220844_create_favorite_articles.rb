class CreateFavoriteArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_articles do |t|
      t.integer :article_id
      t.integer :favorite_id
      t.string :review
      t.timestamps
    end
  end
end

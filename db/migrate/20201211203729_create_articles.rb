class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :category
      t.string :source 
      t.string :author
      t.string :description 
      t.string :url
      t.string :urlToImage
      t.string :content
      t.string :publishedAt
      t.integer :category_choice_id
      t.timestamps
    end
  end
end

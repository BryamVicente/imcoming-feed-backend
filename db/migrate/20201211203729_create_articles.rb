class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :category 
      t.string :author
      t.string :description 
      t.string :url
      t.string :url_to_image
      t.text :content

      t.timestamps
    end
  end
end

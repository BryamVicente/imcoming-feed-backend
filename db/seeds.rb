# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{name 'Star Wars' }, {name 'Lord of the Rings' }])
#   Character.createname 'Luke', movie: movies.first)

require 'rest-client'
require 'json'


Article.destroy_all
Interest.destroy_all
Favorite.destroy_all
User.destroy_all
UserInterest.destroy_all
FavoriteArticle.destroy_all



interest1 = Interest.create!(topic: "Sports")
interest2 = Interest.create!(topic: "Science")
interest3 = Interest.create!(topic: "General")

user1 = User.create!(name: "Bryam", username: "Bryam123", password_digest: "123", email: "Bryam123@gmail.com")
user_interest1 = UserInterest.create!(user_id: user1.id, interest_id: interest3.id)
fav1 = Favorite.create!(user_id: user1.id, name: "my lit list" )

general_articles_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=#{ENV['NEWS_API_KEY']}")
general_articles_data = JSON.parse(general_articles_response)
general_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "General"
    add_category.save
end

sports_articles_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=#{ENV['NEWS_API_KEY']}")
sports_articles_data = JSON.parse(sports_articles_response)
sports_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "Sport"
    add_category.save
end

science_articles_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=#{ENV['NEWS_API_KEY']}")
science_articles_data = JSON.parse(science_articles_response)
science_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "Science"
    add_category.save
end

favorited_article1 = FavoriteArticle.create!(article_id: Article.all.first.id, favorite_id: fav1.id, review: "what the hell!!!!!")



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'

Article.destroy_all
Interest.destroy_all

Interest.create!(topic: "Sports")

sports_articles_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=87b0682411c5463e94de6d2489e36c7e")
sports_articles_data = JSON.parse(sports_articles_response)
sports_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "Sports"
    add_category.save
end

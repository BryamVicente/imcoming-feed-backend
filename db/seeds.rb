# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{name 'Star Wars' }, {name 'Lord of the Rings' }])
#   Character.createname 'Luke', movie: movies.first)

require 'rest-client'
require 'json'
# require "pry"

Article.destroy_all
Interest.destroy_all
Favorite.destroy_all
User.destroy_all
UserInterest.destroy_all
# FavoriteArticle.destroy_all

interest1 = Interest.create!(topic: "Sports")
interest2 = Interest.create!(topic: "Science")
interest3 = Interest.create!(topic: "General")

user1 = User.create!(name: "Bryam", username: "Bryam123", password_digest: "123", email: "Bryam123@gmail.com")
user_interest1 = UserInterest.create!(user_id: user1.id, interest_id: interest3.id)
fav1 = Favorite.create!(user_id: user1.id, name: "my lit list" )
# sports_articles_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=#{ENV['NEWS_API_KEY']}")
# sports_articles_data = JSON.parse(sports_articles_response)
# sports_articles_data["articles"].map do |article|
#     add_category = Article.new(article)
#     add_category.category = "Sports"
#     add_category.save
# end

# science_articles_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=#{ENV['NEWS_API_KEY']}")
# science_articles_data = JSON.parse(science_articles_response)
# science_articles_data["articles"].map do |article|
#     add_category = Article.new(article)
#     add_category.category = "Science"
#     add_category.save
# end

general_articles_response = RestClient.get("https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=#{ENV['NEWS_API_KEY']}")
general_articles_data = JSON.parse(general_articles_response)
general_articles_data["articles"].each do |article|
    add_category = Article.new(article)
    add_category.category = "General"
    add_category.favorite_id = fav1.id
    # binding.pry
    add_category.save
end






# fav1 = Favorite.create!(user_id: user1.id, article_id: Article.all.first )
# fav1 = Favorite.create!(user_id: user1.id, article_id: Article.all.first )
# art_fav1 = FavoriteArticle.create!(favorite_id: fav1.id, article_id: Article.all.first.id, review: "Woow that's crazy!!")
# art_fav2 = FavoriteArticle.create!(favorite_id: fav1.id, article_id: Article.all.second.id, review: "What No way!!")
# art_fav3 = FavoriteArticle.create!(favorite_id: fav1.id, article_id: Article.all.third.id, review: "Soo coool!")
# art_fav4 = FavoriteArticle.create!(favorite_id: fav1.id, article_id: Article.all.fourth.id, review: "Borringgggg!")


# articles = [

#         {
#             source: {
                
#                 name: "The Wall Street Journal"
#             },
#             author: "Heather Somerville",
#             title: "Tech IPO Bonanza Yields Riches for Venture-Capital Firms - The Wall Street Journal",
#             description: "Sequoia Capital and others prosper as the debuts of DoorDash and Airbnb cap the most lucrative year on record for new listings",
#             url: "https://www.wsj.com/articles/tech-ipo-bonanza-yields-riches-for-venture-capital-firms-11607714745",
#             urlToImage: "https://images.wsj.net/im-272243/social",
#             publishedAt: "2020-12-11T22:09:00Z",
#             content: "More than $157 billion has been raised as of Thursday, according to data provider Dealogicover a third of that in the past 11 weeksand the number of listings is the largest since the final hurrah of … [+6643 chars]"
#         },
#         {
#             source: {
               
#                 name: "Polygon"
#             },
#             author: "Charlie Hall",
#             title: "Cyberpunk 2077 patch fixes visual bugs, addresses seizure dangers - Polygon",
#             description: "One day after its Dec. 10 release date, Cyberpunk 2077 gets its first hotfix, including changes for PC, PS4, and Xbox One. Here’s what this patch fixes — and what it doesn’t.",
#             url: "https://www.polygon.com/2020/12/11/22170322/cyberpunk-2077-hotfix-1-04-patch-notes-pc-ps4-xbox-one",
#             urlToImage: "https://cdn.vox-cdn.com/thumbor/Z31R7ar4xCZEcbne1IUR35CQI8Q=/0x75:3840x2085/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/20051629/Cyberpunk2077_Party_at_night_RGB.jpg",
#             publishedAt: "2020-12-11T21:55:02Z",
#             content: "Players who pre-ordered Cyberpunk 2077 and sat down to play on launch day, especially on the PlayStation 4 and Xbox One, had a pretty rough time of it. Even with the day-zero optimizations that it ca… [+5392 chars]"
#         },
#         {
#             source: {
                
#                 name: "CNBC"
#             },
#             author: "Jessica Bursztynsky",
#             title: "Oracle is moving its headquarters from Silicon Valley to Austin, Texas - CNBC",
#             description: "Oracle is the latest tech company to relocate from California to Austin, Texas.",
#             url: "https://www.cnbc.com/2020/12/11/oracle-is-moving-its-headquarters-from-silicon-valley-to-austin-texas.html",
#             urlToImage: "https://image.cnbcfm.com/api/v1/image/106196179-1571762737792rts2rrde.jpg?v=1599752882",
#             publishedAt: "2020-12-11T21:37:00Z",
#             content: "Oracle is the latest tech company to move its headquarters out of California. The company said on Friday it's moving its headquarters from the Silicon Valley to Austin, Texas.\r\n\"Oracle is implementin… [+2063 chars]"
#         },
#         {
#             source: {
               
#                 name: "Deadline"
#             },
#             author: "Mike Fleming Jr",
#             title: "Endeavor’s Patrick Whitesell On WarnerMedia: ‘Blatant Attempt To Self-Deal And Use Our Clients Work To Build Their HBO Max Streaming Service’ - Deadline",
#             description: "EXCLUSIVE: Endeavor Executive Chairman Patrick Whitesell today updated the agents at WME on how egregious he felt last week’s blindside by WarnerMedia was, when the studio announced that Warner Bros’ entire 2021 slate would play HBO Max as the films open in t…",
#             url: "https://deadline.com/2020/12/wme-patrick-whitesell-warnermedia-hbo-max-move-blatant-attempt-to-self-deal-use-our-clients-work-to-build-their-hbo-max-streaming-service-1234655268/",
#             urlToImage: "https://deadline.com/wpcontentuploads/2020/12/WME-WarnerMedia.jpg?w=1000",
#             publishedAt: "2020-12-11T21:23:00Z",
#             content: "I’m writing to everyone today to provide an update on where we are with our negotiations with Warner Bros.  As I made clear to the Motion Picture group last week and will reiterate now: WME rejects t… [+4354 chars]"
#         },
#         {
#             source: {
                
#                 name: "Vulture"
#             },
#             author: "Victoria Bekiempis",
#             title: "Lil Wayne Pleads Guilty in Federal Gun Case - Vulture",
#             description: "That was fast.",
#             url: "http://www.vulture.com/2020/12/lil-wayne-pleads-guilty-in-federal-gun-case.html",
#             urlToImage: "https://pyxis.nymag.com/v1/imgs/16a/0d3/11d90af909642a1f71243c871c5a360252-lil-wayne.1x.rsocial.w1200.jpg",
#             publishedAt: "2020-12-11T20:17:24Z",
#             content: "Lil Wayne pleaded guilty to a weapons-possession charge in Miami Federal Court on Friday. The rapper, whose legalnameis Dwayne Michael Carter Jr., was charged in November.\r\nYour honor, I plead guil… [+2104 chars]"
#         },
#         {
#             source: {
               
#                 name: "Ars Technica"
#             },
#             author: "Timothy B. Lee",
#             title: "Apple’s app store is an illegal monopoly, rival Cydia claims in suit - Ars Technica",
#             description: "Apple argues the iPhone and its app store are part of the same product.",
#             url: "https://arstechnica.com/tech-policy/2020/12/apples-app-store-is-an-illegal-monopoly-rival-cydia-claims-in-suit/",
#             urlToImage: "https://cdn.arstechnica.net/wpcontentuploads/2012/06/iphone_homescreen1-499x215.jpg",
#             publishedAt: "2020-12-11T20:15:00Z",
#             content: "83 with 51 posters participating\r\nThe company behind Cydia, an iPhone app store that launched before Apple's own App Store, has sued Apple arguing that Apple has monopolized the market for iOS app st… [+3449 chars]"
#         },
#         {
#             source: {
                
#                 name: "The Washington Post"
#             },
#             author: "Josh Dawsey, Laurie McGinley",
#             title: "White House orders FDA chief to authorize Pfizer-BioNTech vaccine Friday or submit his resignation - The Washington Post",
#             description: "The message from a top Trump aide prompted the agency to accelerate its announcement, which had been planned for early Saturday.",
#             url: "https://www.washingtonpost.com/health/2020/12/11/trump-stephen-hahn-fda-covid-vaccine/",
#             urlToImage: "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/64LSN5B3XQI6XKWZRFMSE4UAYQ.jpg&w=1440",
#             publishedAt: "2020-12-11T20:14:00Z",
#             content: "The threat came on the same day that President Trump tweeted that the FDA is a big, old, slow turtle in its handling of vaccines, while exhorting Commissioner Stephen Hahn to get the dam vaccines out… [+3386 chars]"
#         },
#         {
#             source: {
                
#                 name: "Sports Illustrated"
#             },
#             author: "Wilton Jackson",
#             title: "NBA Rumors: 76ers Emerges As Likely Destination for Rockets' James Harden - Sports Illustrated",
#             description: "The  Rockets have made it known they do not want to trade the eight-time All-Star at this time.",
#             url: "https://www.si.com/nba/2020/12/11/nba-rumors-76ers-trade-destination-rockets-james-harden",
#             urlToImage: "https://www.si.com/.image/t_share/MTc2NzY3NzUyMTA1NjMzMjg4/james-harden.jpg",
#             publishedAt: "2020-12-11T20:11:00Z",
#             content: "The Philadelphia 76ers have emerged as a likely landing spot for Houston Rockets guard James Harden, The New York Times Marc Stein reports. \r\nThe 76ers are a possible destination if the Rockets event… [+1100 chars]"
#         },
#         {
#             source: {
               
#                 name: "New York Post"
#             },
#             author: "Gabrielle Fonrouge",
#             title: "These ultra-cold freezers will store Pfizer's COVID-19 vaccine in NY - New York Post ",
#             description: "From the outside, they look like futuristic household refrigerators but these ultra-cold machines, installed at hospitals across New York, will be the key to safely storing millions of COVID-19 vac…",
#             url: "https://nypost.com/2020/12/11/these-freezers-will-store-pfizers-covid-19-vaccine-in-ny/",
#             urlToImage: "https://nypost.com/wpcontentuploads/sites/2/2020/12/northwell-health-covid-freezers-1.jpg?quality=90&strip=all&w=1200",
#             publishedAt: "2020-12-11T19:50:00Z",
#             content: "From the outside, they look like futuristic household refrigerators but these ultra-cold machines, installed at hospitals across New York, will be the key to safely storing millions of COVID-19 vacci… [+1931 chars]"
#         },
#         {
#             source: {
               
#                 name: "Fox News"
#             },
#             author: "Audrey Conklin",
#             title: "Bobulinski tells Tucker Carlson that Joe Biden lied about son Hunter's business dealings - Fox News",
#             description: "Former Hunter Biden business partner Tony Bobulinski claimed now-President-elect Joe Biden lied about having no knowledge of his son's foreign business dealings.",
#             url: "https://www.foxnews.com/politics/flashback-bobulinski-tucker-hunter-carlson-biden",
#             urlToImage: "https://static.foxnews.com/foxnews.comcontentuploads/2020/10/Tucker-Bobulinski-Split.jpg",
#             publishedAt: "2020-12-11T19:44:09Z",
#             content: "Former Hunter Biden business partner Tony Bobulinski claimed now-President-elect Joe Biden lied about being unfamiliar with his son's foreign business dealings.\r\nBobulinski, in an Oct. 27 interview w… [+2986 chars]"
#         },
#         {
#             source: {
                
#                 name: "USA Today"
#             },
#             author: "Sean Rossman, Joey Garrison, David Jackson",
#             title: "Live politics updates: Biden calls for leadership in COVID crisis; Senate passes defense bill over Trump objections - USA TODAY",
#             description: "President-elect Joe Biden led off his announcement of administration appointees Friday with warnings about “a grim milestone” in the COVID-19 crisis.",
#             url: "https://www.usatoday.com/story/news/politics/2020/12/11/presidential-transition-news-joe-biden-donald-trump/3889629001/",
#             urlToImage: "https://www.gannett-cdn.com/presto/2020/12/11/USAT/6eac4f71-2c26-4113-826c-2e2aa00efd96-AP20346724286500.jpg?crop=5744,3231,x0,y395&width=3200&height=1680&fit=bounds",
#             publishedAt: "2020-12-11T19:43:06Z",
#             content: "USA TODAY's coverage of the 2020 election and President-elect Joe Biden's transition continues this week as he rolls out more of his picks for top jobs in his administration. Meanwhile, the remaining… [+12609 chars]"
#         },
#         {
#             source: {
                
#                 name: "Yahoo Entertainment"
#             },
#             author: "Brittany Shepherd",
#             title: "Last-minute executions under Trump put spotlight on Biden's death penalty views - Yahoo News",
#             description: "The first federal executions during a president's lame-duck period in over a century have turned attention to how President-elect Joe Biden's administration ...",
#             url: "https://news.yahoo.com/last-minute-executions-under-trump-put-spotlights-bidens-death-penalty-views-192149133.html",
#             urlToImage: "https://s.yimg.com/os/creatr-uploaded-images/2020-12/365c9690-3be1-11eb-bafe-dfa71ef92c96",
#             publishedAt: "2020-12-11T19:21:00Z",
#             content: "The first federal executions during a president's lame-duck period in over a century have turned attention to how President-elect Joe Biden's administration will handle the death penalty.\r\nThe high-p… [+3547 chars]"
#         },
#         {
#             source: {
               
#                 name: "CNN"
#             },
#             author: "Maggie Fox, CNN",
#             title: "Boston biotech conference led to 333,000 Covid-19 cases across US, genetic fingerprinting shows - CNN",
#             description: "A biotech conference in Boston last February that's already been flagged as a Covid-19 superspreading event led to at least 333,000 other cases across the US and Europe, a new genetic fingerprinting study shows.",
#             url: "https://www.cnn.com/2020/12/11/health/superspreader-covid-boston-biotech-conference/index.html",
#             urlToImage: "https://cdn.cnn.com/cnnnext/dam/assets/201127150943-01-holiday-travel-1125-los-angeles-super-tease.jpg",
#             publishedAt: "2020-12-11T19:20:00Z",
#             content: "(CNN)A biotech conference in Boston last February that's already been flagged as a Covid-19 superspreading event led to at least 333,000 other cases across the US and Europe, a new genetic fingerprin… [+3725 chars]"
#         },
#         {
#             source: {
                
#                 name: "Lifehacker.com"
#             },
#             author: "David Murphy",
#             title: "Update Android's 'Carrier Services' If Your Texts Won't Send - Lifehacker",
#             description: "A mysterious bug built into an updated version of Android’s Carrier Services app has messed with Android users’ ability to send and receive text messages. If you feel like you’ve been struggling with your texting for around a week and a half or so, you’re in …",
#             url: "https://lifehacker.com/update-androids-carrier-services-if-your-texts-wont-sen-1845860947",
#             urlToImage: "https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/xmg1rfpkl1xk0xkzfyx9.jpg",
#             publishedAt: "2020-12-11T19:15:00Z",
#             content: "A mysterious bug built into an updated version of Androids Carrier Services app has messed with Android users ability to send and receive text messages. If you feel like youve been struggling with yo… [+2148 chars]"
#         },
#         {
#             source: {
                
#                 name: "Fox News"
#             },
#             author: "Madeline Farber",
#             title: "Coronavirus surge leaves only 7% of ICU beds open in this state, hospital official says - Fox News",
#             description: "Just days after Alabama surpassed 2,000 coronavirus hospitalizations for the first time since the pandemic began, one hospital official in the state said that less than 10% of intensive care unit (ICU) beds remain available to those in need.",
#             url: "https://www.foxnews.com/health/coronavirus-surge-icu-bed-shortage-alabama",
#             urlToImage: "https://static.foxnews.com/foxnews.comcontentuploads/2020/12/emergency-room.jpg",
#             publishedAt: "2020-12-11T19:08:01Z",
#             content: "Just days after Alabama surpassed 2,000 coronavirus hospitalizations for the first time since the pandemic began, one hospital official in the state said that fewer than 10% of intensive care unit (I… [+1643 chars]"
#         },
#         {
#             source: {
                
#                 name: "NBC News"
#             },
#             author: "Sahil Kapur",
#             title: "Congress passes military authorization, one-week funding bill to avert government shutdown - NBC News",
#             description: "Congress passes a one-week continuing resolution to avert government shutdown and buy time for coronavirus relief negotiations.",
#             url: "https://www.nbcnews.com/politics/congress/congress-passes-military-authorization-one-week-funding-bill-avert-government-n1250934",
#             urlToImage: "https://media1.s-nbcnews.com/j/newscms/2020_50/3435154/201211-mitch-mcconnell-al-1340_211372be3f04c6ce0d0870dd89a6afa4.nbcnews-fp-1200-630.jpg",
#             publishedAt: "2020-12-11T19:08:00Z",
#             content: "WASHINGTON The Senate passed a one-week stopgap bill to keep the government running through next Friday, buying time to hammer out deals on full-year funding and coronavirus aid.\r\nAlso Friday, the Se… [+1777 chars]"
#         },
#         {
#             source: {
                
#                 name: "Google News"
#             },
#             author: "null",
#             title: "Seattle watchers will have to get the timing right to see ‘Christmas Star’ - Seattle Times",
#             description: "null",
#             url: "https://news.google.com/__i/rss/rd/articles/CBMic2h0dHBzOi8vd3d3LnNlYXR0bGV0aW1lcy5jb20vc2VhdHRsZS1uZXdzL3NlYXR0bGUtd2F0Y2hlcnMtd2lsbC1oYXZlLXRvLWdldC10aGUtdGltaW5nLXJpZ2h0LXRvLXNlZS1jaHJpc3RtYXMtc3Rhci_SAXlodHRwczovL3d3dy5zZWF0dGxldGltZXMuY29tL3NlYXR0bGUtbmV3cy9zZWF0dGxlLXdhdGNoZXJzLXdpbGwtaGF2ZS10by1nZXQtdGhlLXRpbWluZy1yaWdodC10by1zZWUtY2hyaXN0bWFzLXN0YXIvP2FtcD0x?oc=5",
#             urlToImage: "null",
#             publishedAt: "2020-12-11T19:05:00Z",
#             content: "null"
#         },
#         {
#             source: {
                
#                 name: "San Francisco Chronicle"
#             },
#             author: "Kevin Fagan",
#             title: "Zodiac ‘340 Cipher’ cracked by code experts 51 years after it was sent to the S.F. Chronicle - San Francisco Chronicle",
#             description: "<p>The decoded text from the Zodiac Killer reads: “I hope you are having lots of fun in trying to catch me. ... I am not afraid of the gas chamber because it will send me to paradice (sic) all the sooner because I now have enough slaves to work for me.”</p>",
#             url: "https://www.sfchronicle.com/crime/article/Zodiac-340-cypher-cracked-by-code-expert-51-years-15794943.php",
#             urlToImage: "https://s.hdnux.com/photos/01/15/56/07/20373984/5/rawImage.jpg",
#             publishedAt: "2020-12-11T18:59:00Z",
#             content: "The solution to what’s known as the 340 Cipher, one of the most vexing mysteries of the Zodiac Killer’s murderous saga, has been found by a code-breaking team from the United States, Australia and Be… [+5153 chars]"
#         },
#         {
#             source: {
                
#                 name: "NPR"
#             },
#             author: "Bill Chappell",
#             title: "Wisconsin Judge Rejects Trump Bid To Overturn Biden Win - NPR",
#             description: "\"The certification of the results of the 2020 Wisconsin presidential election, after the Dane County and Milwaukee County recounts is affirmed,\" Reserve Judge Stephen Simanek said.",
#             url: "https://www.npr.org/2020/12/11/945483203/wisconsin-judge-rules-against-another-trump-bid-to-overturn-bidens-win",
#             urlToImage: "https://media.npr.org/assets/img/2020/12/11/wisconsin-recount-election_wide-36e5c87bf0b8e7f7cbc9ecb1c3cdf28b52cb5d6d.jpg?s=1400",
#             publishedAt: "2020-12-11T18:58:00Z",
#             content: "Representatives for President Trump, left, review ballots in Madison on Nov. 20 during the recount vote in Dane County. A state judge on Friday rejected a Trump campaign attempt to challenge the voti… [+2601 chars]"
#         },
#         {
#             source: {
#                 id: "bleacher-report",
#                 name: "Bleacher Report"
#             },
#             author: "Tim Daniels",
#             title: "Kevin Love: Kyrie Irving Calling Media 'Pawns' Is a 'Sure Sign of Disrespect' - Bleacher Report",
#             description: "Cleveland Cavaliers forward  Kevin Love  condemned former teammate  Kyrie Irving  for using the term \"pawns\" to describe members of the media.    \"Calling anybody a pawn is a sure sign of disrespect,\" Love  told reporters  Friday...",
#             url: "https://bleacherreport.com/articles/2921999-kevin-love-kyrie-irving-calling-media-pawns-is-a-sure-sign-of-disrespect",
#             urlToImage: "https://img.bleacherreport.net/img/images/photos/003/895/673/hi-res-e1f87c99071f5b4d30ae8301ae88f702_crop_exact.jpg?w=1200&h=1200&q=75",
#             publishedAt: "2020-12-11T18:43:03Z",
#             content: "Tony Dejak/Associated Press\r\nCleveland Cavaliers forward Kevin Love condemned former teammate Kyrie Irving for using the term \"pawns\" to describe members of the media.\r\n\"Calling anybody a pawn is a s… [+2623 chars]"
#         }
#     ]


#     articles.each do |article|
#         Article.create!(article)
#       end
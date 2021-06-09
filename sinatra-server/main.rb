require 'sinatra'
require 'airrecord'
require './article'

Airrecord.api_key = ENV['AIRTABLE_KEY']

get	'/articles' do
  content_type :json

  articles = Article.all
  results = []
  articles.each do |article|
    results << { 
      headline: article.headline, 
      sub_headline: article.sub_headline, 
      image: article.image 
    }
  end
  results.to_json
end

require 'sinatra'

get '/home' do
erb :index
end

get '/portfolio' do
erb :gallery
end

get '/about_me' do
@skills = ['git', 'HTML', 'CSS', 'Ruby']
@interests = ['hockey','nutrition', 'coding', 'fashion']
erb :about_me
end

get '/favourites' do
@fav_links = ["https://cronometer.com", "https://naturalstattrick.com", "https://corsica.hockey"]
erb :fav_link
end

get '/' do
redirect to ('/home')
end

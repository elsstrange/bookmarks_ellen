require 'sinatra/base'
require './lib/bookmark'

ENV['bookmark_challenge_db'] = 'bookmark_manager'

class Bookmarks < Sinatra::Base
  get '/test' do
    'Some text'
  end

  get '/bookmarks' do
    # p 'entering get bookmarks route'
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  post '/bookmarks' do
    # p 'entering post bookmarks route'
    Bookmark.create(params[:name], params[:url])
    # p 'exiting the post bookmarks route'
    redirect '/bookmarks'
  end

  get '/bookmarks/new' do
    # p 'entering get bookmarks/new route'
    erb :bookmarks_new
  end
end

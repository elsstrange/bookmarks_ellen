require 'sinatra/base'
require './lib/bookmark'

ENV['bookmark_challenge_db'] = 'bookmark_manager'

class Bookmarks < Sinatra::Base
  get '/test' do
    'Some text'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end
end

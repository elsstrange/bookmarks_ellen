require 'sinatra/base'
require './lib/bookmark'

class Bookmarks < Sinatra::Base
  get '/test' do
    'Some text'
  end

  get '/' do
    @bookmarks = Bookmark.all
    erb :index
  end
end

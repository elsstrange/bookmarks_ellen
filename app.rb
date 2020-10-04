require 'sinatra/base'
require './lib/bookmark'

class Bookmarks < Sinatra::Base
  get '/test' do
    'Some text'
  end

  get '/' do
    erb :index, locals: { bookmarks => Bookmark }
  end
end

require 'sinatra/base'
require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base

    get '/' do
        "Bookmark Manager"
    end

    get '/bookmarks' do
   p ENV
      @bookmarks = Bookmark.all
      erb :viewing_bookmarks
    end

run! if app_file == $0
end

require 'sinatra/base'

class BookmarkManager < Sinatra::Base

    get '/' do
        "Bookmark Manager"
    end

    get '/bookmarks' do
      @bookmark = ["http://www.google.com", "http://www.facebook.com"]
      erb :viewing_bookmarks
    end

run! if app_file == $0
end

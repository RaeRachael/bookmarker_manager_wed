require 'sinatra/base'
require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  get '/' do
   "Bookmark Manager"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :viewing_bookmarks
  end

  get '/add_bookmark' do
    erb :adding_bookmark
  end

  post '/added_bookmark' do
    Bookmark.create(params[:bookmark])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end

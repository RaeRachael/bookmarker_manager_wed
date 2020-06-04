require_relative 'database_connection_setup'
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
    Bookmark.create(params[:bookmark], params[:title])
    redirect '/bookmarks'
  end

  post "/delete_bookmark" do
    Bookmark.delete(params[:id])
    redirect '/bookmarks'
  end

  post '/update_bookmark' do
    @bookmark = Bookmark.all.select {|bookmark| bookmark.id == params[:id]}
    erb :update_form
  end

  post '/updated_bookmark' do
    Bookmark.update(params[:id], params[:url], params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end

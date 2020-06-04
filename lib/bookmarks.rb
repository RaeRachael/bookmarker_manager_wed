require 'pg'

class Bookmark

  attr_reader :id, :url, :title

  def initialize(id, url, title)
    @id =id
    @url = url
    @title = title
  end

  def self.all
    connection = select_database

      rs = connection.exec "SELECT id, title, url FROM bookmarks"

      rs.map { |bookmark| Bookmark.new(bookmark['id'], bookmark['url'], bookmark['title']) }
  end

  def self.create(url, title)
    connection = select_database

    connection.exec "INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}')"

  end

  def self.delete(id)
    connection = select_database

    connection.exec "DELETE FROM bookmarks WHERE id='#{id}'"
  end

  def self.select_database
    if ENV['RACK_ENV'] == 'test'
      PG.connect :dbname => 'bookmark_manager_test'
    else
      PG.connect :dbname => 'bookmark_manager'
    end
  end

end

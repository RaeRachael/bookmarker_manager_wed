require 'pg'

class Bookmark

  attr_reader :url, :title

  def initialize(id, url, title)
    @id =id
    @url = url
    @title = title
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end

      rs = connection.exec "SELECT id, title, url FROM bookmarks"

      rs.map { |bookmark| Bookmark.new(bookmark['id'], bookmark['url'], bookmark['title']) }
  end

  def self.create(url, title)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end

    connection.exec "INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}')"

  end
end

## connection.exec "DELETE FROM bookmarks WHERE title = #{argument}" IDEA FOR DELETE METHOD

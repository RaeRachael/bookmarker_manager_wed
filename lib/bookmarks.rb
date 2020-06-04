require 'pg'

class Bookmark

  attr_reader :id, :url, :title

  def initialize(id, url, title)
    @id =id
    @url = url
    @title = title
  end

  def self.all
    rs = DatabaseConnection.query( "SELECT id, title, url FROM bookmarks" )

    rs.map { |bookmark| Bookmark.new(bookmark['id'], bookmark['url'], bookmark['title']) }
  end

  def self.create(url, title)
    DatabaseConnection.query( "INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}')" )
  end

  def self.delete(id)
    DatabaseConnection.query( "DELETE FROM bookmarks WHERE id='#{id}'" )
  end

  def self.update(id, url, title)
    DatabaseConnection.query( "UPDATE bookmarks SET url = '#{url}', title = '#{title}' WHERE id ='#{id}'" )
  end

end

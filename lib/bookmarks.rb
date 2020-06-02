require 'pg'

class Bookmark

  def self.all
      con = PG.connect :dbname => 'bookmark_manager', :user => 'sophie'

      rs = con.exec "SELECT url FROM bookmarks"

# ["http://www.google.com",
# "http://www.facebook.com"]
  end

end

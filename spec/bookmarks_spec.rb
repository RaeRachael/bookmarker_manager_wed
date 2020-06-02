require 'bookmarks'


describe Bookmark do

  describe ".all method" do

    con = PG.connect :dbname => 'bookmark_manager_test'

    rs = con.exec "SELECT url FROM bookmarks"

    rs.map { |bookmark| bookmark['url'] }

    it "return all the bookmarks" do
      list = Bookmark.all
      expect(list).to include "http://www.google.com"
      # expect(list).to include "http://www.facebook.com"
    end

  end

end

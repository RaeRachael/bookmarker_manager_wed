require 'bookmarks'

describe Bookmark do

  describe ".all method" do

    it "return all the bookmarks" do
      list = Bookmark.all
      expect(list).to include "http://www.google.com"
      # expect(list).to include "http://www.facebook.com"
    end

  end

end

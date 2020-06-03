require 'bookmarks'

describe Bookmark do

  describe '#all' do
    it "return all the bookmarks" do

      bookmarks = Bookmark.all

      expect(bookmarks).to include(["Makers Academy      ", 'http://www.makersacademy.com'])
      expect(bookmarks).to include(["Destroy All Software", 'http://www.destroyallsoftware.com'])
      expect(bookmarks).to include(["Google              ", 'http://www.google.com'])
    end
  end

  describe '#create' do
    it 'should add data to the database' do
      Bookmark.create("www.facebook.com", 'facebook')
      expect(Bookmark.all).to include(["facebook            ", "www.facebook.com"])
    end
  end
end

require 'bookmarks'

describe Bookmark do

  describe '#all' do
    it "return all the bookmarks" do

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  describe '#create' do
    it 'should add data to the database' do
      bookmark = Bookmark.new
      bookmark.create("www.facebook.com")
      expect(Bookmark.all).to include('www.facebook.com')
    end
  end
end

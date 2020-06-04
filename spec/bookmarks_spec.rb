require 'bookmarks'

describe Bookmark do

  describe '#all' do
    it "return all the bookmarks" do

      bookmarks = Bookmark.all

      expect(bookmarks[0].title).to include("Makers Academy")
      expect(bookmarks[1].url).to include('http://www.destroyallsoftware.com')
      expect(bookmarks[2].title).to include("Google")
    end
  end

  describe '#create' do
    it 'should add data to the database' do
      Bookmark.create("www.facebook.com", 'facebook')
      expect(Bookmark.all[3].title).to include("facebook")
      expect(Bookmark.all[3].url).to include("www.facebook.com")
    end
  end
end

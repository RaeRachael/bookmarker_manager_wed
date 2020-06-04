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

  describe '#delete' do
    it 'should delete data from the database' do
      Bookmark.delete(1)
      expect(Bookmark.all[0].title).to_not include("Makers Academy")
    end
  end

  describe '#update(id, url, title)' do
    it 'should update the correct bookmark'do
      Bookmark.update(1, 'http://www.makersacademy.com', 'not the title')
      bookmark = Bookmark.all.select { |bookmark| bookmark.id == '1' }
      expect(bookmark[0].title).to include('not the title')
    end

  end
end

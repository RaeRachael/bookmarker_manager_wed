require 'bookmarks'

describe BookmarkList do

subject(:bookmarkList) { described_class.new }

it "shows the user all of their bookmarks" do
  expect(bookmarkList.all).to include "google"
end
end

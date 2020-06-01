require 'bookmarks'

describe BookmarkList do

subject(:bookmarkList) { described_class.new }
let(:show) { [ "google", "BBC", "pepperpig" ] }

it "shows the user all of their bookmarks" do
  expect(bookmarkList.show).to include "google"
end
end

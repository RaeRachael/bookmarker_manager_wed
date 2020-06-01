feature 'display the bookmarks' do
  scenario 'renders the list bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.facebook.com"
  end
end

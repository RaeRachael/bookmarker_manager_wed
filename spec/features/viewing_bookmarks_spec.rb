require 'pg'

feature 'display the bookmarks' do
  scenario 'renders the list bookmarks' do

    visit('/bookmarks')
    expect(page).to have_content "Makers Academy"
    expect(page).to have_content "Destroy All Software"
    expect(page).to have_content "Google"
  end
end

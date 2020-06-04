feature '/update_bookmark' do
  feature 'update button' do
    scenario 'update a bookmark' do
      visit('/bookmarks')
      find('#update1').click
      fill_in('title', :with => 'not Makers Academy')
      click_button("Submit")
      expect(page).to have_content "not Makers Academy"
    end
  end

  scenario 'prints error, invalid URL' do
    visit('/bookmarks')
    find('#update1').click
    fill_in('url', :with => 'not a url')
    click_button("Submit")
    expect(page).to have_content "Error, that is not a valid URL"
  end
end

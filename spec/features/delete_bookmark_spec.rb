feature '/bookmarks' do
  feature 'delete button' do
    scenario 'Deleting the bookmark' do
      visit('/bookmarks')
      click_button('delete 1')
      expect(page).not_to have_content "Makers Academy"
    end
  end
end

feature '/bookmarks' do
  feature 'delete button' do
    scenario 'Deleting the bookmark' do
      visit('/bookmarks')
      find('#1').click 
      expect(page).not_to have_content "Makers Academy"
    end
  end
end

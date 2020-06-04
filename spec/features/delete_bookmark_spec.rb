feature '/delete_bookmark' do
  feature 'delete button' do
    scenario 'Deleting the bookmark' do
      visit('/bookmarks')
      find('#delete1').click
      expect(page).not_to have_content "Makers Academy"
    end
  end
end

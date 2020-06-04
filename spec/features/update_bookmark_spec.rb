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
end

feature '/add_bookmark' do
  scenario 'Can add a bookmark which is then visible' do
    visit('/bookmarks')
    click_button('add bookmark')
    fill_in('bookmark', :with => 'www.facebook')
    fill_in('title', :with => 'facebook')
    click_button('Submit')
    expect(page).to have_content('facebook')
  end
end

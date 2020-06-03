feature '/add_bookmark' do
  scenario 'Can add a bookmark which is then visible' do
    visit('/bookmarks')
    click_button('add bookmark')
    fill_in('bookmark', :with => 'www.facebook')
    click_button('Submit')
    expect(page).to have_content('www.facebook')
  end
end

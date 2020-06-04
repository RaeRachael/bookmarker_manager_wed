feature '/add_bookmark' do
  scenario 'Can add a bookmark which is then visible' do
    visit('/bookmarks')
    click_button('add bookmark')
    fill_in('bookmark', :with => 'www.facebook.com')
    fill_in('title', :with => 'facebook')
    click_button('Submit')
    expect(page).to have_content('facebook')
    expect(page).to have_link('facebook', href: 'www.facebook.com')
  end
end

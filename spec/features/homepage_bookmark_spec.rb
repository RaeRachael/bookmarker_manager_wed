feature 'bookmark homepage' do
  scenario 'shows bookmark homepage when visit' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
end
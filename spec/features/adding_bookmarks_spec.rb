feature 'adding a new bookmark' do
  let(:bookmark_name) { 'IMDB' }
  let(:bookmark_url) { 'http://www.imdb.com' }

  scenario 'user adds one bookmark' do
    visit '/bookmarks'
    click_button 'Add new bookmark'
    fill_in 'name', with: bookmark_name
    fill_in 'url', with: bookmark_url
    click_button 'save'
    expect(page).to have_content bookmark_name
    expect(page).to have_content bookmark_url
    expect(current_path).to eq '/bookmarks'
  end
end
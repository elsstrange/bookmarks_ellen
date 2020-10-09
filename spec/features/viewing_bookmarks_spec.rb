feature 'see a list of bookmarks' do
  let(:expected_bookmark_name1) { 'Google' }
  let(:expected_bookmark_url1) { 'http://www.google.co.uk' }
  let(:expected_bookmark_url2) { 'Github' }
  let(:expected_bookmark_name2) { 'http://www.github.com' }
  let!(:expected_bookmark1) { Bookmark.create(expected_bookmark_name1, expected_bookmark_url1) }
  let!(:expected_bookmark2) { Bookmark.create(expected_bookmark_name2, expected_bookmark_url2) }

  scenario 'visit list' do
    visit '/bookmarks'
    expect(page).to have_content expected_bookmark_name1
    expect(page).to have_content expected_bookmark_name2
    expect(page).to have_content expected_bookmark_url1
    expect(page).to have_content expected_bookmark_url2
  end
end

feature 'see a list of bookmarks' do
  let(:expected_bookmark_name1) { 'Google Homepage' }
  let(:expected_bookmark_url1) { 'google.co.uk/' }
  let(:expected_bookmark_name2) { 'Github' }
  let(:expected_bookmark_url2) { 'github.com' }


  scenario 'visit homepage' do
    visit '/'
    expect(page).to have_content expected_bookmark_name1
    expect(page).to have_content expected_bookmark_name2
    expect(page).to have_content expected_bookmark_url1
    expect(page).to have_content expected_bookmark_url2
  end
end

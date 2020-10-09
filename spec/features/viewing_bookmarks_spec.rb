feature 'see a list of bookmarks' do
  let(:expected_bookmark_name1) { 'google' }
  let(:expected_bookmark_url1) { 'google.co.uk' }
  let(:expected_bookmark_url2) { 'github.com' }
  let(:expected_bookmark_name2) { 'github' }
  #let!(:expected_bookmark_url2) { Bookmark.create(name: 'ed', url: 'YAY') }

  scenario 'visit list' do
    begin
      con = PG.connect :dbname => ENV['bookmark_challenge_db'], :user => 'student'
      list = con.exec("
        INSERT INTO bookmarks(name,url)
        VALUES
          ('#{expected_bookmark_name1}','#{expected_bookmark_url1}'),
          ('#{expected_bookmark_name2}','#{expected_bookmark_url2}')
      ")
    rescue PG::Error => e
      puts e.message 
    ensure
      con.close if con
    end

    visit '/bookmarks'
    expect(page).to have_content expected_bookmark_name1
    expect(page).to have_content expected_bookmark_name2
    expect(page).to have_content expected_bookmark_url1
    expect(page).to have_content expected_bookmark_url2
  end
end

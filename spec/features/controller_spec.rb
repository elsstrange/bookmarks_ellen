feature 'loads a page' do
  scenario 'test page' do
    visit '/test'
    expect(page).to have_content 'Some text'
  end
end

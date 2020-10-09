require './lib/bookmark'

describe Bookmark do
  let(:bookmark_name) { 'A Bookmark' }
  let(:bookmark_url) { 'http://www.an-url.com' }

  it 'returns an array of bookmarks' do
    expect(Bookmark.all).to all(be_an(Bookmark))
  end

  it 'stores and returns a new bookmark' do
    Bookmark.create(bookmark_name, bookmark_url)
    result = Bookmark.all[0]
    expect(result.name).to eq bookmark_name
    expect(result.url).to eq bookmark_url
  end

  describe 'bookmark instances' do
    let(:bookmark) { described_class.new(bookmark_name, bookmark_url) }

    it 'returns the name of the bookmark' do
      expect(bookmark.name).to eq bookmark_name
    end

    it 'returns the url of the bookmark' do
      expect(bookmark.url).to eq bookmark_url
    end
  end
end
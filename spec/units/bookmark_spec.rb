require './lib/bookmark'

describe Bookmark do
  it 'returns an array of bookmarks' do
    expect(Bookmark.all).to all( be_an(Bookmark))
  end

  describe 'bookmark instances' do
    let(:bookmark_name) { double }
    let(:bookmark_url) { double }
    let(:bookmark) { described_class.new(bookmark_name, bookmark_url) }

    it 'returns the name of the bookmark' do
      expect(bookmark.name).to eq bookmark_name
    end

    it 'returns the url of the bookmark' do
      expect(bookmark.url).to eq bookmark_url
    end
  end
end
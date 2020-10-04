class Bookmark
  attr_reader :name, :url

  def initialize(name, url)
    @name = name
    @url = url
  end

  def self.all
    [
      self.new('Google Homepage','google.co.uk/'),
      self.new('Github','github.com')
    ]
  end
end
require 'pg'

class Bookmark
  attr_reader :name, :url

  def initialize(name, url)
    @name = name
    @url = url
  end

  def self.all
    begin
      con = PG.connect :dbname => ENV['bookmark_challenge_db'], :user => 'student'
      list = con.exec('SELECT * FROM bookmarks;') do |result|
        result.map { |row| new(row['name'], row['url']) }
      end
    rescue PG::Error => e
      puts e.message 
    ensure
      con.close if con
    end
    list
  end
end
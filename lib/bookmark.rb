require 'pg'

class Bookmark
  attr_reader :name, :url

  def initialize(name, url)
    @name = name
    @url = url
  end

  def self.all
    result = execute_sql("SELECT * FROM bookmarks;")
    result.map { |row| new(row['name'], row['url']) }    
  end

  def self.create(name, url)
    execute_sql("INSERT INTO bookmarks(name,url) VALUES('#{name}','#{url}');")
  end

  private
  
  def self.connect_to_db
    PG.connect :dbname => ENV['bookmark_challenge_db'], :user => 'student'
  end

  def self.execute_sql(sql_query)
    begin
      con = connect_to_db
      output = con.exec(sql_query)
    rescue PG::Error => e
      puts e.message 
    ensure
      con.close if con
    end
    output
  end
end

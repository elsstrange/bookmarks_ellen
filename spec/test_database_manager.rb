require 'rspec'

RSpec.configure do |config|
  config.before(:each) do
    begin
      con = PG.connect :dbname => ENV['bookmark_challenge_db'], :user => 'student'
      result = con.exec('TRUNCATE TABLE bookmarks;')
    rescue PG::Error => e
      puts e.message 
    ensure
      con.close if con
    end
  end
end

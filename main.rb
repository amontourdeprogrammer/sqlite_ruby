require 'sqlite3'

db = SQLite3::Database.new 'file.db'

data = ARGV[0]

db.execute("INSERT INTO statuts (name) VALUES (?)", data)

db.execute 'SELECT * FROM statuts' do |row|
  p row
end

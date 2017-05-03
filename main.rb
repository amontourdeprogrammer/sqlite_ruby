require 'sqlite3'

db = SQLite3::Database.new 'file.db'

puts "What's your name ?"
author = gets.chomp

puts "What's your status ?"
content = gets.chomp


db.execute("INSERT INTO statuts (author, content, date_statuts) VALUES (?, ?,CURRENT_TIMESTAMP)", author, content)


db.execute 'SELECT * FROM statuts' do |row|
  p row
end
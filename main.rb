require 'sqlite3'

db = SQLite3::Database.new 'file.db'

result = db.execute <<-SQL
  CREATE TABLE statuts (
    name VARCHAR(30)
);
SQL

db.execute('INSERT INTO statuts (name) VALUES ("coucou");')


db.execute 'SELECT * FROM statuts' do |row|
  p row
end

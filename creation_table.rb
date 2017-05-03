require 'sqlite3'

db = SQLite3::Database.new 'file.db'

db.execute <<-SQL
  CREATE TABLE statuts (
    author VARCHAR(30),
    content VARCHAR(140),
    date_statuts DATE
);
SQL
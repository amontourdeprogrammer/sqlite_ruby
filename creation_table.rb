require 'sqlite3'

db = SQLite3::Database.new 'file.db'

db.execute <<-SQL
  CREATE TABLE statuts (
    name VARCHAR(30),
    date_statuts DATE
);
SQL





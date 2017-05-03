require 'rubygems'
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new 'file.db'

get '/' do
  @statuts = db.execute 'SELECT * FROM statuts ' 
    erb :index
end

require 'rubygems'
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new 'file.db'

get '/' do 
    erb :home
end

post '/statuts' do
	author = params["author"]
	content = params["content"]
	db.execute("INSERT INTO statuts (author, content, date_statuts) VALUES (?, ?,CURRENT_TIMESTAMP)", author, content)
	redirect to ('/statuts')
end

get '/statuts' do
	@authors = db.execute 'SELECT author FROM statuts'
	@statuts = db.execute("SELECT * FROM statuts WHERE author = ?", params["author"])
    erb :index
end
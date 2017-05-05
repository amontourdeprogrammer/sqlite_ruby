require 'rubygems'
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new 'file.db'

get '/' do 
    erb :home
end

post '/statuts' do
	db.execute("INSERT INTO statuts (author, content, date_statuts) VALUES (?, ?,CURRENT_TIMESTAMP)", params["author"], params["content"])
	redirect to ('/statuts')
end

get '/statuts' do
	@authors = db.execute 'SELECT author FROM statuts'
	if params["author"] == nil
		@statuts = db.execute 'SELECT * FROM statuts'
	else
		@statuts = db.execute("SELECT * FROM statuts WHERE author = ?", params["author"])
	end
    erb :index
end
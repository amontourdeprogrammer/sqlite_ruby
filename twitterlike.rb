require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'file.db'
)

class Statut < ActiveRecord::Base
end


get '/' do
  @statuts = Statut.all()
    erb :index
end


# get '/' do
#     erb :index
# end
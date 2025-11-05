require "sinatra"
require "sinatra/activerecord"

# Configure DB
# set :database, 'sqlite3:database.db'
set :database, {:adapter =>'sqlite3', :database=>'orders.db'}


# CRUD Roots
class YourApplication < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get "/order/:id" do
    id = params[:id]
  end

  post "/order/" do
  end

  patch "/order/:id" do
  end

  delete "/order/:id" do
  end

  get "/" do
    "OK"
  end
end


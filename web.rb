require "sinatra"
require "sinatra/activerecord"
require "./order"


# Configure DB
# set :database, 'sqlite3:database.db'
set :database, {:adapter =>'sqlite3', :database=>'orders.db'}

# CRUD Roots
register Sinatra::ActiveRecordExtension
  
  get "/" do
    "OK #{Order.count}"
  end
  
  get "/order/:id" do
    id = params[:id]
    Order.where(id: id).as_json
  end

  post "/order/" do
  end

  patch "/order/:id" do
  end

  delete "/order/:id" do
  end



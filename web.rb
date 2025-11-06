require "sinatra/activerecord"
require "sinatra/json"

require "./order"

class Web < Sinatra::Base
  # Configure DB
  # set :database, {:adapter =>'sqlite3', :database=>'orders.db'}

  # CRUD Roots
  register Sinatra::ActiveRecordExtension
  
  get "/" do
    json({status: "OK", items: Order.count})
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
end

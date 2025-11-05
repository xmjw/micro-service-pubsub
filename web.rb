require "sinatra"

# Configure DB
set :database, 'sqlite3:database.db'

# CRUD Roots

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




Rails.application.routes.draw do
  # collections
  get "/collections" => "collections#index"
  get "/collections/:id" => "collections#show"
  post "/collections" => "collections#create"
  patch "/collections/:id" => "collections#update"
  delete "/collections/:id" => "collections#destroy"
  # perfumes
  get "/perfumes" => "perfumes#index"
  post "/perfumes" => "perfumes#create"
  get "/perfumes/:id" => "perfumes#show"
  patch "/perfumes/:id" => "perfumes#update"
  delete "/perfumes/:id" => "perfumes#destroy"
end

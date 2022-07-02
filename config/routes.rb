Rails.application.routes.draw do
  get "/perfumes" => "perfumes#index"
  post "/perfumes" => "perfumes#create"
  get "/perfumes/:id" => "perfumes#show"
  patch "/perfumes/:id" => "perfumes#update"
  delete "/perfumes/:id" => "perfumes#destroy"
end

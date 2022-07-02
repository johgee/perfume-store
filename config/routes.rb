Rails.application.routes.draw do
  get "/collections" => "collections#index"
  get "/collections/:id" => "collections#show"
  post "/collections" => "collections#create"
  patch "/collections/:id" => "collections#update"
  delete "/collections/:id" => "collections#destroy"
end

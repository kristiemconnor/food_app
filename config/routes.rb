Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
 
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"


end

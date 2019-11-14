Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    get "/users/me" => "users#show"
    patch "/users/me" => "users#update"
    delete "/users/me" => "users#destroy"

    get "/recipes" => "recipes#index"
    get "/recipes/:id" => "recipes#show"


    post "/sessions" => "sessions#create"

    get "/ingredients" => "ingredients#index"
    get "/ingredients/:id" => "ingredients#show"
    post "/ingredients" => "ingredients#create"
    patch "/ingredients/:id" => "ingredients#update"
    delete "/ingredients/:id" => "ingredients#destroy"
  end
end

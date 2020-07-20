Rails.application.routes.draw do

  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE


   namespace :api do
    get "/actors" => "actors#index"
    get "/movies/:id" => "movies#show"
    post "movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
   end
  end
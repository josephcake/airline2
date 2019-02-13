Rails.application.routes.draw do
  resources :airport_flights
  resources :airports
  resources :flights
  resources :customers
  resources :tickets
  post "/flights/selected_page/:id" => "flights#selected"
  post "/customers/ticket/new" => "tickets#new"

  # resources :sessions
  # resources :search
  get "/login" => "sessions#check"
  post "/user" => "sessions#login"
  get "/home" => "sessions#index"
  delete "/logout" => "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

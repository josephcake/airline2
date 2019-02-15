Rails.application.routes.draw do
  resources :airport_flights
  resources :airports
  resources :flights
  resources :customers
  resources :tickets
  get "/customer_tickets/:id" => "customers#customer_tickets"
  post "/flights/selected_page/:id" => "flights#selected"
  get "/customers/ticket/new" => "tickets#new"
  post "/customers/ticket/:id" => "tickets#create_flight"
  # get "/flights/create_random" => "flights#new_random"
  post "/flights/create_random/" => "flights#create_random"

  # post "/flights/selected_page/:id" => "flights#selected"

  # get "/customers/new/customer_tickets" => "tickets#new"
  # post "/customers/:id/customer_tickets" => "tickets#create_flight"


  # resources :sessions
  # resources :search
  get "/login" => "sessions#check"
  post "/user" => "sessions#login"
  get "/home" => "sessions#index"
  get "/logout" => "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

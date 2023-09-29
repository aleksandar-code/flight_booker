Rails.application.routes.draw do
  resources :bookings
  resources :flights
  devise_for :users
  root to: "flights#index"
  get '/search', to: "flights#index"

end

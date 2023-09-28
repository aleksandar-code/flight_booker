Rails.application.routes.draw do
  resources :flights
  devise_for :users
  root to: "flights#index"
end

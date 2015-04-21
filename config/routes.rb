Rails.application.routes.draw do


  root 'products#index'

  #get "/login" => "sessions#new"
  #delete "/logout" => "sessions#destroy"

  resources :products
  resources :users, only: [:create, :new]
  resources :sessions, only: [:new, :create, :destroy]

end

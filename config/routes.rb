Rails.application.routes.draw do


  root 'products#index'
  #resources :sessions, :only => [:create]

  #get "/login" => "sessions#new"
  #delete "/logout" => "sessions#destroy"

  resources :products
  resources :users, only: [:create, :new]

end

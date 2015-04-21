Rails.application.routes.draw do
 root "products#index"
 resources :products do
    resources :reviews, only: [:show, :create, :destroy]
  end 
  resources :users, only: [:create, :new]
  resources :sessions, only: [:new, :create, :destroy]
  
end

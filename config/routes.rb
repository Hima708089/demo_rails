Rails.application.routes.draw do
  devise_for :users
  resources :managers
  resources :subordinates
  root 'home#index'
  get 'holidays/index'
  resources :leaves 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end

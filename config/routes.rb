Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :flights, only: [:index] do
  # # namespace :flights, only: [:index] do
  #   resources :passengers, only: [:destroy]#, controller: "flights/passengers"
  # end
  # #should be to flights/passengers
  # get "flights/:id/passengers/:id", to: "passengers#destroy"

  # resources :airlines, only: [:show]

  # resources :airlines
  # resources :flights do
  #   resources :passengers
  # end
  # resources :passengers
  # namespace :flights, only: [:index] do
  #should be to flights/passengers
  # get "flights/:id/passengers/:id", to: "passengers#destroy"
  resources :flights, only: [:index] do
    resources :passengers, only: [:show, :destroy]#, controller: "flights/passengers"
  end
  
  resources :airlines, only: [:show]
end

Rails.application.routes.draw do
  get 'pets_count/index'
  resources :users
  get "/" => "home#index"

  resources :pets, only: [:show]

  resources :match, only: [:index, :create]

  resources :search, only: [:index, :show]

  resources :pets_count, only: [:index]

end

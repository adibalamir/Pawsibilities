Rails.application.routes.draw do
  get "/" => "home#index"

  resources :pets, only: [:index, :show]

  resources :match, only: [:index, :create]

  resources :search, only: [:index, :show]

end

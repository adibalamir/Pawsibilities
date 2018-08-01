Rails.application.routes.draw do
  get "/" => "home#index"

  resources :pets, only: [:show]

  resources :match, only: [:index]

  resources :result, only: [:index]

  resources :search, only: [:index, :show]

end

Rails.application.routes.draw do
  get "/" => "home#index"

  resources :pets, only: [:show]

  resources :match, only: [:index, :create]

  resource :search, only: [:index]

end

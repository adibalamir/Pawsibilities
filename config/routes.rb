Rails.application.routes.draw do
  get "/" => "home#index"

  resources :pets, only: [:show]
    # resource :dog_highlight, only: [:show]

  resources :match, only: [:index, :create]

  resources :search, only: [:index, :show]

end

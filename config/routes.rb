Rails.application.routes.draw do
  # root to: '/'

  resources :pets, only: [:index, :show]

  resources :match, only: [:show]

  resources :search, only: [:show]

end

Rails.application.routes.draw do
  get 'pets_count/index'
  resources :users
  get "/" => "home#index"

  resources :pets, only: [:show]

  resources :match, only: [:index]

  resources :result, only: [:index]

  resources :search, only: [:index, :show]

  resources :pets_count, only: [:index]

  post "/mail" => "contact_shelter#mail"

end

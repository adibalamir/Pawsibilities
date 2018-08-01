Rails.application.routes.draw do
  get 'pets_count/index'
  # resources :users
  get "/" => "home#index"

  resources :pets, only: [:show]

  resources :match, only: [:index]

  resources :result, only: [:index]

  resources :search, only: [:index, :show]

  resources :pets_count, only: [:index]


  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end

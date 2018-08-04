Rails.application.routes.draw do
  get 'pets_count/index'
  # resources :users
  get "/" => "home#index"

  resources :pets, only: [:show]

  resources :match, only: [:index]

  resources :result, only: [:index]

  resources :search, only: [:index, :show]

  resources :pets_count, only: [:index]

  resources :users do
    resources :pets, only: [:show]  do
      resources :likes
    end
  end

  resources :users do
    resources :likes, only: [:index]
end



  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  put '/update' => 'users#update'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post "/mail" => "contact_shelter#mail"

end

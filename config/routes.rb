Rails.application.routes.draw do

  root 'welcome#index'

  get '/main', to: 'craft_beers#index'

  get '/login', to: 'sessions#new'

  get '/signup', to: 'users#new'

  # get '/favorites/create/:id', to: 'favorites#create'

  get 'secret/public_info'
  get 'secret/secret'


  resources :sessions, only: [:new, :create, :destroy]
  resources :craft_beers do
    resources :favorites, only: [:create]
  end

  resources :static_pages

  resources :users
  
  delete '/logout', to: 'sessions#destroy'


  end

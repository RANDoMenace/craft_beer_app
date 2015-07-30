Rails.application.routes.draw do

  root 'welcome#index'

  get '/main', to: 'static_pages#index'

  get '/login', to: 'sessions#new'

  get '/signup', to: 'users#new'

  # get '/favorites/create/:id', to: 'favorites#create'



  resources :sessions, only: [:new, :create, :destroy]
  resources :craft_beers do
    resources :favorites, only: [:create]
  end
  resources :static_pages

  resources :users
  delete '/logout', to: 'sessions#destroy'


  end

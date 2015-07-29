Rails.application.routes.draw do

  root 'secret#public_info'

  get '/main', to: 'secret#secret'

  get '/login', to: 'sessions#new'
  get '/signup', to: 'users#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :craft_beers

  resources :users
  delete '/logout', to: 'sessions#destroy'


  end

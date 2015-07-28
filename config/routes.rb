Rails.application.routes.draw do

  get 'secret/secret'

  root "secret#public_info"

  get '/login', to: 'sessions#new'
  get '/signup', to: 'users#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :beers

  resources :users
  delete '/logout', to: 'sessions#destroy'


  end

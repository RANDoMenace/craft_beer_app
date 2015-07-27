Rails.application.routes.draw do

  get 'secret/public_info'

  get 'secret/secret'

  root "welcome#index"

  get '/login', to: 'sessions#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :beers

  resources :users
  delete '/logout', to: 'sessions#destroy'


  end

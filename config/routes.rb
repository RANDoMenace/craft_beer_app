Rails.application.routes.draw do

  root 'welcome#index'

  get '/main', to: 'static_pages#index'

  get '/login', to: 'sessions#new'
  get '/signup', to: 'users#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :craft_beers
  resources :static_pages

  resources :users
  delete '/logout', to: 'sessions#destroy'


  end

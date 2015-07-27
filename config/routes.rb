Rails.application.routes.draw do

  root "beers#index"

  get '/login', to: 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :beers, only: [:index, :show]

  resources :users

  end

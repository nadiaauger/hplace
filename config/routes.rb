Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :users, only: [:show]
  resources :events, only: [:show, :new, :create,:edit, :update] do
    resources :reservations, only: [:create, :destroy]
  end

  resources :hospitals, only: [:show]

  get '/handler', to: 'hospitals#handler', as: 'handler'
  get '/dashboard', to: 'users#dashboard', as: 'dashboard'
  get '/notification', to: 'users#notification', as: 'notification'

  mount ActionCable.server => "/cable"

end

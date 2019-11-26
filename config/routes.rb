Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :events, only: [:show, :new, :create] do
    resources :reservations, only: [:create, :destroy]
  end
  resources :hospitals, only: [:show]

  get '/dashboard', to: 'users#dashboard', as: 'dashboard'

end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :hospitals, only: [:show]
  resources :events, only: [:show, :new, :create, :edit, :update]

end

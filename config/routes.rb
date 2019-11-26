Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:show, :new, :create] do
    resources :reservations, only: [ :create]
  end
  resources :hospitals, only: [:show]

end

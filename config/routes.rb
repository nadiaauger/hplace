Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # root to: 'users#dashboard'

  resources :users, only: [:show]
  resources :reservations, only: [:destroy]
  resources :events, only: [:show, :new, :create,:edit, :update] do
    resources :reservations, only: [:create]
    resources :chat_rooms, only: [:create, :show] do
      resources :messages, only: [:create]
    end
  end

  resources :hospitals, only: [:show]

  get '/handler', to: 'hospitals#handler', as: 'handler'
  get '/dashboard', to: 'users#dashboard', as: 'dashboard'
  get '/notification', to: 'users#notification', as: 'notification'
  post '/mark_notifications_seen', to: 'users#mark_notifications_seen', as: 'notification_seen'

  mount ActionCable.server => "/cable"

end

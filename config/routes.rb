Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
  resources :events, only: [:show, :new, :create]
=======

  resources :hospiatls, only: [:show]
>>>>>>> 7d9b95516079461efd15c2757182ce8e24c7c311
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

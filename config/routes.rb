Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new] #importante esse krl
<<<<<<< HEAD

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
<<<<<<< HEAD

  resource :categories, except: [:destroy]
=======
=======
>>>>>>> 491a24b1fe80297020f4ff1c15f01387fb7f2b88
>>>>>>> 1621341b6e23b1fc4ae34ca50d73b612a4f2a038
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new] #importante esse krl


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'


  resource :categories, except: [:destroy]

end

Rails.application.routes.draw do
  get 'toppages/index'

  root to: 'toppages#index'
  
  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  get 'tasklist/create'

  get 'tasklist/destory'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'tasks#new'
  
  resources :tasks, only: [:index, :show, :new, :create]
end

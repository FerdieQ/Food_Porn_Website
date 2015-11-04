Rails.application.routes.draw do
  root 'pages#home'
  get 'welcome' => 'pages#home'

  get '/comments' => 'comments#index'
  get '/comments/new' => 'comments#new'
  post 'comments' => 'comments#create'



  resources :users, only: [:index, :new, :create, :destroy]

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end



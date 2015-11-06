Rails.application.routes.draw do
  root 'pages#home'
  get 'welcome' => 'pages#home'
  get 'members' => 'pages#members'
  get 'user_index' => 'users#index'





  get '/photos_index' => 'photos#index'
  get 'form' => 'photos#form'

  resources :photos
  resources :comments
  resources :users, only: [:index, :new, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end



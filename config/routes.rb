Rails.application.routes.draw do

  # Events
  resources :events, only: [:index, :show, :create, :new]

  # Sessions
  get 'logout', to: 'sessions#destroy'

  # Users
  get '/signup', to: 'users#new' 
  get 'users/:id', to: "users#show"
  post '/signup', to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  resources :users

end 
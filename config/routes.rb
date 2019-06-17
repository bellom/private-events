Rails.application.routes.draw do

  # Events
  resources :events, only: [:index, :show, :create, :new]

  # Sessions
  get 'sessions/new'
  get 'sessions/new'
  get 'sessions/destroy'
  get 'sessions/new'

  # Users
  get "/signup", to: 'users#new' 
  get 'users/:id', to: "users#show"
  post "/signup", to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  resources :users

end
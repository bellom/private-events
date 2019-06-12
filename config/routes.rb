Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/new'
  get 'sessions/destroy'
  get 'sessions/new'
  get "/signup", to: 'users#new' 
  get 'users/show/:id', to: "users#show"
  post "/signup", to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'

  resources :users

end
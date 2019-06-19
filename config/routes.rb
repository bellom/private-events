Rails.application.routes.draw do
  root 'events#index'
  # Events
  resources :events, only: [:index, :show, :create, :new]

  # Sessions
  delete 'logout', to: 'sessions#destroy'

  # Users
  get '/signup', to: 'users#new' 
  get 'users/:id', to: "users#show"
  post '/signup', to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  resources :users

  # Event Attendance
  post '/event_attendances', to: 'event_attendances#create'
  get '/attendance/new', to: 'event_attendances#new'
end 
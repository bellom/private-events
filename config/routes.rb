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
  post '/attendance', to: 'event_attendance#create'
  get '/attendance/new', to: 'event_attendance#new'
end 
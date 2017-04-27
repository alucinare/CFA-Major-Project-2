Rails.application.routes.draw do

  resources :profiles
  root "welcome#about"

  get '/contact', to: "contacts#form"
  post '/contact', to: "contacts#mail"

  get 'registrations/new'

  # post 'home/action'

  get '/signup', to: "registrations#new"
  post '/signup', to: "registrations#create"

  get 'login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  # get 'users/:id', to: "users#show", as: "profile"

  resources :chatrooms, param: :slug
  resources :messages

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end

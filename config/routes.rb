Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  root 'welcome#index'

  get '/dashboard', to: 'users#dashboard'
  get '/login', to: 'sessions#new'
  get '/test', to: 'welcome#test'
  resources :articles
  resources :artworks
  resources :users

  # get '/artworks'

 

 
end

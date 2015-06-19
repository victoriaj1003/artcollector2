Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  root 'welcome#index'

  get '/dashboard', to: 'users#dashboard'

  resources :articles

  # get '/articles(params[:article_id]', to: 'articles#new'


 
end

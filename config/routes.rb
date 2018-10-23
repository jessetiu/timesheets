Rails.application.routes.draw do

  get 'sessions/new'
  # Page format:
  # get '/url', to: 'controller#action'
  # I think the default action is go to the view.
  # To link to a page, use <url>_path
  root 'users#loginmenu'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users #defines a whole bunch of routes for a fully RESTful API

  # In future

  # For edit details page, url should be the username
  
  # get '/timesheet', to: 'timesheet#form' # or something similar
  # post '/timesheet', to: ???

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

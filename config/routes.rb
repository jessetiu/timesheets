Rails.application.routes.draw do

  # Page format:
  # get '/url', to: 'controller#action'
  # I think the default action is go to the view.
  # To link to a page, use <url>_path
  get '/signup', to: 'users#signup'
  get '/login', to: 'users#login'
  get 'users/new'
  get 'sessions/new'
	root 'users#loginmenu'

  # In future

  # For edit details page, url should be the username
  
  # get '/timesheet', to: 'timesheet#form' # or something similar
  # post '/timesheet', to: ???

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

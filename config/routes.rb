Rails.application.routes.draw do

  # Define Root URL
  root 'pages#index'

  # pages/ refers to URL, whereas pages# refers to method
  # pages#index points root URL to index method

  # GET means we want these pages to be accessible as webpages
  # `get 'pages/home'`
  # `get 'pages/profile'`
  # `get 'pages/explore'`

  # so, if we typed in localhost:3000/pages/profile, this will get to the profile page
  # if we wanted to make this shorter and, say, accomplish the same thing by typing localhost:3000/profile instead:
  get '/home' => 'pages#home'
  get '/profile' => 'pages#profile'
  get '/explore' => 'pages#explore'
  # this is useful because sometimes we don't want our URLs to directly reflect our file structure

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
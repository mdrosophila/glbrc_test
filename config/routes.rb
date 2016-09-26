Rails.application.routes.draw do
  get 'static_pages/home'
  # The above is a short cut for get '/help', to: 'static_pages#help'
  get '/home', to: 'static_pages#home' #, as: 'my', use as to rename the path from home_path to my_path
  root 'static_pages#home'
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

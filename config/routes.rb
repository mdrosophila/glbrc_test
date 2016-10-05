Rails.application.routes.draw do
  get 'static_pages/home'
  # The above is a short cut for get '/home', to: 'static_pages#home'
  get '/home', to: 'static_pages#home' #, as: 'my', use as to rename the path from home_path to my_path
  root 'static_pages#home'
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users do
    member do
      get :configureApp
    end
  end
  resources :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

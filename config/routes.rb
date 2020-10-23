Rails.application.routes.draw do

  get '/auth/:provider/callback', to: 'sessions#create'


  get '/', to: 'application#index'
  resources :users, only: [:show]
  #logins
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'session#destroy'

  resources :comments

  resources :books

  resources :books do 
    :comments
  end


  

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

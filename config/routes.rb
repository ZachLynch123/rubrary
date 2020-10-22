Rails.application.routes.draw do

  #logins
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'session#destroy'
  

  #books
  get '/books', to: 'books#index', as: 'books' 
  get '/book/new', to: 'books#new', as: 'new_book'
  get '/book/:id', to: 'books#show', as: 'book'
  post '/books', to: 'books#create'
  get '/books/:id/edit', to: 'items#edit', as: 'edit_book'
  patch '/books/:id', to: 'books#update'
  delete '/books/:id', to: 'items#delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

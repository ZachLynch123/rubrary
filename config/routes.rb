Rails.application.routes.draw do

  get '/books', to: 'books#index' as: 'books' 
  get '/books/:id', to: 'books#show', as: 'book'
  get '/books/new', to: 'books#new', as: 'new_book'
  post '/books', to: 'books#create'
  get '/books/:id/edit', to: 'items#edit', as: 'edit_book'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  #get '/bookshelf' , to: 'books#index' , as: 'bookshelf'
  #post '/bookshelf' , to: 'books#create' 
  #get '/bookshelf/new', to: 'books#new'
  #get '/bookshelf/:id', to: 'books#show', as: 'bookshelf_id'
  resources :books
end

Rails.application.routes.draw do
  resources :books, only: [:index , :new , :show]
end
Rails.application.routes.draw do
  root to: 'home#index'

  post 'books' => 'books#create'

  get 'books/:id' => 'books#show', as: 'book'

resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

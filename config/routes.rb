Rails.application.routes.draw do
  devise_for :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'books#index'
  get 'books/assigntag'
  post 'assign_tags', to: 'books#assigntags'
  resources :authors
  resources :books
  resources :tags
end


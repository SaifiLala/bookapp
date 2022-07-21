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


  namespace :api do 
    namespace :v1 do
        get :books, to: 'books#index'
        get 'author_books', to: 'books#author_books'
        post 'createnewbook', to: 'books#createnewbook'
    end
  end

  


end


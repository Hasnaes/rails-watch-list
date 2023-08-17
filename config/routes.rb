Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy], as: :delete_bookmark

  # Read all
  # get 'lists/:id/bookmarks/new', to:'lists#index'

  # # Create new
  # get "lists/new", to: "lists#new"
  # post "lists", to: "lists#create"

  # # Read one
  # get 'lists/:id', to:'lists#show'
end

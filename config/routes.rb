Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users

  resources :categories
  resources :users, only: [:update]
  resources :articles do
    get "user/:user_id", to: "articles#from_author", on: :collection
  end
  get 'profile', to: "users#edit"

  # get "articles", to: "articles#index"
  # get "articles/new", to: "articles#new", as: :new_articles
  # get "articles/:id", to: "articles#show" 
  # get "articles/:id/edit", to: "articles#edit"
  # patch "articles/:id", to: "articles#update", as: :article 
  # post "articles", to: "articles#create"
  # delete "articles/:id", to: "articles#destroy"
end

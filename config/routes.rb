Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "welcome", to: "home#index"
  get "articles/new", to: "articles#new"
  get "articles/:id", to: "articles#show" 
  get "articles/:id/edit", to: "articles#edit"
  patch "articles/:id", to: "articles#update", as: :article 
  post "articles", to: "articles#create"
end

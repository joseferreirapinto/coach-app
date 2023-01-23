Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "teams", to: "teams#index"
  get "teams/:id", to: "teams#show"
  get "teams/new", to: "teams#new"
end

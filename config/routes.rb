Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :teams
  # resources :pages

  # Defines the root path route ("/")

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  get "index", to: "teams#index"
  get "new", to: "teams#new"
  get "show", to: "teams#show"
end

Rails.application.routes.draw do

  get "/signup", to: "users#new"

  post "/signup", to: "users#create"

  get "/help", to: "static_pages#help", as: "help"

  get "/about", to: "static_pages#about", as: "about"

  get "/contact", to: "static_pages#contact", as: "contact"

  get "/login", to: "sessions#new"

  post "/login", to: "sessions#create"

  get "/logout", to: "sessions#destroy"

  root "static_pages#home"

  resources :users
  resources :account_activations, only: :edit
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
end


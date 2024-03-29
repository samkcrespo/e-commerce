Rails.application.routes.draw do
  resources :skus, only: [:create, :update, :destroy]
  resources :orders
  resources :product_categories
  resources :categories
  resources :products
  resources :carts, only: [:update]
  
  resources :users, only: [:destroy, :update]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  get '/me', to: 'users#show'
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end

Rails.application.routes.draw do
  root "landing_page#index"
  resources :products
  resources :manufacturers, only: %w[create new show]
  resources :shoppers , only: %w[create new show index edit update destroy]
  resources :carts
  post '/signin', to: 'sign_in#login'
  get '/logout', to: 'sign_in#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

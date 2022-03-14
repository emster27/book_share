Rails.application.routes.draw do
  root :to => "books#index"
  resources :reviews
  resources :authors
  devise_for :users
  resources :users
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

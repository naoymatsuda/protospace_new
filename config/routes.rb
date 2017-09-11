Rails.application.routes.draw do
  devise_for :users
  post "/" => "prototypes#index"
  root 'prototypes#index'
  resources :prototypes, only: [:index]
  resources :users, only: [:show, :edit, :update]
end

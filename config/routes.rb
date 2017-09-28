Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes, only: [:new, :create, :index])
  resources :users, only: [:show, :edit, :update]
end

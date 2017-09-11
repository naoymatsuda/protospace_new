Rails.application.routes.draw do
  devise_for :users
  post "/" => "prototypes#index"
  root 'prototypes#index'
  resources :prototypes
  resources :users, only: [:show, :edit, :update]
end

Rails.application.routes.draw do
  get 'prototypes_latests/index'

  devise_for :users
  root 'prototypes#index'
  resources :prototypes, only: [:new, :create, :index, :show] do
    resources :comments, only: [:new, :create]
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  resources :prototypes_latests, only: [:index]
end

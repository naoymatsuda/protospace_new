Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes, only: [:new, :create, :index, :show] do
    resources :comments, only: [:new, :create]
    collection do
      get 'newest'
    end
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end

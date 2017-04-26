Rails.application.routes.draw do

  root :to => 'homes#index'
  resources :products, only: [:edit, :update, :destroy, :index]
  resources :categories do
    resources :products, only: [:new, :create, :index]
  end
  get "download"  => "homes#download"
end

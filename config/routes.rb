Rails.application.routes.draw do

  root :to => 'homes#index'
  resources :products, only: [:edit, :update, :destroy, :index, :show]
  get "upload_image"   => "products#upload_image", as: "upload_image"
  resources :categories do
    resources :products, only: [:new, :create, :index]
  end
  get "download"  => "homes#download"
end

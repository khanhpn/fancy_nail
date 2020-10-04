Rails.application.routes.draw do

  root :to => 'homes#index'
  resources :products, only: [:edit, :update, :destroy, :index, :show]
  get "upload_image"   => "products#upload_image", as: "upload_image"
  resources :categories do
    resources :products, only: [:new, :create, :index]
  end

  resources :advetisments
  resources :videos
  resources :events
  resources :slogans
  resources :time_workings
  get 'search'    => "search#index"
  get "download"  => "homes#download"
  get 'policy'    => "homes#policy"
  get 'event'    => "homes#event"
  get 'about'    => "homes#about"
  get 'contact'    => "homes#contact"
  get 'store_location'    => "homes#store_location"
  get 'term_of_use' => "homes#term_of_use"
  get 'admin'   => "homes#admin"
end

Rails.application.routes.draw do
  root :to => 'homes#index'
  get "download"  => "homes#download"
end

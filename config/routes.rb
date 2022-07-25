Rails.application.routes.draw do
  resources :students, only: [:index, :create, :destroy]
  resources :instuctors, only: [:index, :create, :destroy]
end

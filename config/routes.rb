Rails.application.routes.draw do
  # get 'maps/index'
  # get 'maps/show'
  devise_for :users
  root to: "maps#index"
  resources :maps, only: [:index, :show]
  resources :posts, only: [:new, :create]
end

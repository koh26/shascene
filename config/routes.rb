Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  root to: "maps#index"
  resources :maps, only: [:index, :show] do
    resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
      resources :comments, only: [:create]
      collection do
        get 'search'
      end
    end
  end

  resources :users  , only: [:show]

end

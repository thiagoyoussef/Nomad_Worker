Rails.application.routes.draw do
  devise_for :users
  root to: 'cities#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cities, only: [:show, :index] do
    resources :reviews, only: [:create, :update, :destroy]
    post "create_wishlist", to: "wishlists#create_index"
    resources :wishlists, only: [:create]
  end
  resources :wishlists, only: [:index, :destroy]
end

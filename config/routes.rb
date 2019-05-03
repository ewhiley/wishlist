Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { confirmations: 'confirmations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  resources :categories
  resources :wishlists do
    resources :purchases
  end

  resources :profiles
  # get '/users/:id/products', to: 'users#products', as: 'user_products'
  get '/users/:id/wishlists', to: 'users#wishlists', as: 'user_wishlists'

  get '/products', to: 'products#index', as: 'my_products'
  get '/wishlists', to: 'wishlists#index', as: 'my_wishlists'
  get '/profiles', to: 'profiles#index', as: 'my_profile'
  get '/sold', to: 'users#seller_history', as: 'my_sales'
  get '/ticked-off', to: 'users#wishlist_history', as: 'my_wishlist_history'
  get '/purchase-no-wishlist/:id', to: 'purchases#no_wishlist', as: 'purchase_no_wishlist'
  post '/purchase-no-wishlist/', to: 'purchases#no_wishlist_create', as: 'purchase_no_wishlist_create'
end

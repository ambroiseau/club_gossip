Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  resources :static_pages
  resources :gossips do
    resources :comments, only: [:new, :create, :index, :destroy]
  end
end

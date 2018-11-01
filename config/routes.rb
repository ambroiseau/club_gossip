Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  resources :static_pages
  resources :gossips do
    resources :comments, only: [:new, :create, :show, :index, :destroy], shallow: true
  end
end

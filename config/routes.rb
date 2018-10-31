Rails.application.routes.draw do
  root 'static_pages#home'
  resources :static_pages
  resources :gossips, except: [:destroy] do
    resources :comments, only: [:new, :create, :index, :destroy]
  end
end

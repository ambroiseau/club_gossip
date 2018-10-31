Rails.application.routes.draw do
  resources :gossips, except: [:destroy] do
    resources :comments, only: [:new, :create, :index, :destroy]
  end
end

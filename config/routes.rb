Rails.application.routes.draw do
  devise_for :users
  
  root to: "splash#index"

  resources :categories, only: [:index, :show, :create, :new] do
    resources :movements, only: [:new, :create]
  end
end

Rails.application.routes.draw do
  root "tweeets#index"
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :tweeets, :users
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  scope "(:locale)", locale: /en|pl/ do
    resources :categories, only: [:show, :index]
    devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)
    resources :follows
    root "tweeets#index"
    devise_for :users, :controllers => { registrations: 'registrations' }
    resources :tweeets, :users
  
    post '/users/:id/follow', to: "users#follow", as: "follow_user"
    post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
Rails.application.routes.draw do
  get 'omniauth_callbacks_controller/facebook'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :posts, only: [:index, :show, :new, :create, :delete] do
    resources :missions, only: [:new] do
      patch 'accept', on: :member
      patch 'decline', on: :member
    end
  end

  authenticated :user do
    root to: 'posts#index', as: :authenticated_root
  end

  root to: 'pages#home'

  get 'dashboard', to: 'pages#dashboard'
  get 'requests', to: 'pages#requests'
  get 'profile', to: 'pages#profile'
end

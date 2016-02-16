Rails.application.routes.draw do
  get 'omniauth_callbacks_controller/facebook'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  resources :posts, only: [:index, :show, :new, :create, :delete]

  get 'dashboard', to: 'pages#dashboard'

end

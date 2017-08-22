Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'posts#index'
  resources :posts, only: [:index, :show]
  namespace :admin do
    resources :posts do
      member do
        get 'publish'
      end
    end
  end
end

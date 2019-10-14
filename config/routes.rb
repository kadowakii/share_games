Rails.application.routes.draw do
  root 'creatives#index'
  get 'terms', to: 'creatives#terms'
  get 'privacy_policy', to: 'creatives#privacy_policy'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  resources :users do
    member do
      get :following, :followers
    end
  end
  
  devise_scope :user do
    get "show", :to => "users/registrations#show"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  resources :microposts, only: [:create, :destroy]
  get "youtubers/:id", :to => "youtubers#show"
end

Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  
  devise_scope :user do
    get "users/:id", :to => "users/registrations#show"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end


  resources :microposts
  root 'creatives#index'
  get  'contact', to: 'creatives#contact'
  get 'terms', to: 'creatives#terms'
  get 'privacy_policy', to: 'creatives#privacy_policy'
end

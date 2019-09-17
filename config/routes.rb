Rails.application.routes.draw do
  resources :users
  root 'creatives#index'
  get 'terms', to: 'creatives#terms'
  get 'privacy_policy', to: 'creatives#privacy_policy'
end

Rails.application.routes.draw do
  resources :microposts
  resources :users
  root 'creatives#index'
  get  'contact', to: 'creatives#contact'
  get 'terms', to: 'creatives#terms'
  get 'privacy_policy', to: 'creatives#privacy_policy'
end

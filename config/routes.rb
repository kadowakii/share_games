Rails.application.routes.draw do
  resources :users
  root 'creatives#index'
end

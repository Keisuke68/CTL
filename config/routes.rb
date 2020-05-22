Rails.application.routes.draw do
  root 'pages#index'
  resources :articles
  resources :users
end

Rails.application.routes.draw do
  root 'pages#index'
  resources :articles
  resources :users
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end

Rails.application.routes.draw do
  # get 'categories/show'
  resources :categories
  resources :coats
  devise_for :users
  root to: 'pages#home'
end

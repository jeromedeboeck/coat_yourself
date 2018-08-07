Rails.application.routes.draw do
  # get 'categories/show'
  resources :categories
  resources :coats
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

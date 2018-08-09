Rails.application.routes.draw do
  root to: 'pages#home'
  resources :categories
  resources :coats do
    resources :bookings, only: [:new, :create, :show]
  end
  devise_for :users
end

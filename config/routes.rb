Rails.application.routes.draw do
  root to: 'pages#home'
  get "pages/dashboard"
  resources :categories
  resources :coats do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [:index]
  devise_for :users
end

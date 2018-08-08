Rails.application.routes.draw do
  root to: 'categories#index'
  resources :categories
  resources :coats do
    resources :bookings, only: [:new, :create, :show]
  end
  devise_for :users
end

Rails.application.routes.draw do
  root to: 'pages#home'
  get "pages/dashboard"
  resources :categories
  resources :coats do
    resources :bookings, only: [:new, :create, :show]
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :bookings, only: [:index]
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cafes do
    resources :bookings, only: [:new, :create]
    end

  resources :tables, only: [:new, :create, :edit, :update, :destroy]
  resources :bookings, only: [:show, :edit, :update, :destroy, :confirm] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]
  resources :dashboard, only: [:show]

end


Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cafes do
    resources :tables, only: [:new, :create, :edit, :update, :destroy]
  end


  resources :tables, only: [] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]

end


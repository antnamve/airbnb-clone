Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  namespace :api do
    resources :wishlists, only: %i[create destroy]
  end

  resources :properties, only: %i[show] do
    resources :bookings, only: %i[new]
  end

  resources :wishlists, only: %i[index]

  resources :profiles, only: %i[show]

  resources :reservations, only: %i[show]
end

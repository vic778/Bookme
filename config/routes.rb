# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  get 'users/show'
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :users

  authenticated :user do
    root 'home#dashboard', as: :authenticated_root
  end
  resources :booking_types
  resources :bookings, expect: [:index, :new]  

  get ':booking_link', to: 'users#show', as: :user
  scope '/:booking_link', as: :user do
    resources :bookings, only: [:index, :new]
  end
  root to: 'home#index'
end

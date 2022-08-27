require 'sidekiq/web'

Rails.application.routes.draw do
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users

  authenticated :user do
    root 'home#dashboard', as: :authenticated_root
  end
  root to: 'home#index'
 
end

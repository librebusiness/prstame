Rails.application.routes.draw do
  resources :proof_of_addresses
  devise_for :customers
  devise_for :managers
  devise_for :staffs, only: [:sessions, :passwords]
  devise_for :admins, only: [:sessions, :passwords]

  get 'dashboard', to: 'dashboard#index'
  get 'settings', to: 'dashboard#settings'
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'faqs', to: 'home#faqs'
  get 'feed', to: 'home#feed'
  get 'pricing', to: 'home#pricing'
  get 'privacy_policy', to: 'home#privacy_policy'
  get 'products', to: 'home#products'
  get 'terms', to: 'home#terms'
  get 'team', to: 'home#team'

  root 'home#index'
end

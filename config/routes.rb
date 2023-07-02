Rails.application.routes.draw do
  namespace :customer do
    get 'dashboard', to: 'dashboard#index'
    get 'settings', to: 'dashboard#settings'
    get 'profile', to: 'dashboard#profile'
  end

  namespace :manager do
    get 'dashboard', to: 'dashboard#index'
    get 'settings', to: 'dashboard#settings'
    get 'profile', to: 'dashboard#profile'
    get 'staff_members', to: 'dashboard#staff_members'
  end

  namespace :staff do
    get 'dashboard', to: 'dashboard#index'
    get 'settings', to: 'dashboard#settings'
    get 'profile', to: 'dashboard#profile'
  end

  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    get 'settings', to: 'dashboard#settings'
    get 'profile', to: 'dashboard#profile'
    get 'managers', to: 'dashboard#managers'
    get 'manager/:id', to: 'dashboard#manager'
  end

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
  
  devise_for :customers
  devise_for :managers
  devise_for :staffs, only: [:sessions, :passwords]
  devise_for :admins, only: [:sessions, :passwords]
end

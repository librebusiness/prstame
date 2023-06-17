Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#index'
  get 'settings', to: 'dashboard#settings'
  devise_for :users
  root to: 'home#index'
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'faqs', to: 'home#faqs'
  get 'feed', to: 'home#feed'
  get 'pricing', to: 'home#pricing'
  get 'privacy_policy', to: 'home#privacy_policy'
  get 'products', to: 'home#products'
  get 'terms', to: 'home#terms'
  get 'team', to: 'home#team'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

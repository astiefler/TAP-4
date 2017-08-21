Rails.application.routes.draw do

  resources :probabilities
  resources :clients
  resources :blood_types
  resources :zodiacs
  resources :states
  resources :countries
  resources :age_ranges
  resources :genders
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "admin/dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

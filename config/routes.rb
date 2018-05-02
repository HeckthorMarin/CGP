Rails.application.routes.draw do

  devise_for :users

  authenticated :user do
    root 'home#indx', as: :authenticated_root
  end

  root to: "home#index"

  resources :security_questions
  resources :accounts
  resources :type_accounts
  resources :badges
  resources :entities
  resources :images
  resources :icons

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end

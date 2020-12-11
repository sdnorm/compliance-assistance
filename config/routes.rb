Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :answers
  resources :questions
  resources :forms
  root 'pages#index'
  get 'pages/index'
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

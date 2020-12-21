Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  root 'pages#index'
  get 'pages/index'
  
  resources :locations do
    resources :visits do
      resources :answers
      resources :questions
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

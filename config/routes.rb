Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/index'
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

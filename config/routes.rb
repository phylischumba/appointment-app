Rails.application.routes.draw do
  concern :api_base do
    resources :doctors, :appointments
  end
  namespace :v1 do
    concerns :api_base
  end
  resources :users, only:  :create
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  root to: 'v1/doctors#index'

end

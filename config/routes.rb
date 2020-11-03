Rails.application.routes.draw do
  resources :tutors, only: %i[index show]

  resources :users, only: %i[index show]

  resources :appointments, only: %i[index show update destroy]

  get '/', to: 'home#index'
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  post 'appointments/new', to: 'appointments#create'
end
# Rails.application.routes.draw do
#   concern :api_base do
#     resources :doctors, :appointments
#   end
#   namespace :v1 do
#     concerns :api_base
#   end
#   resources :users, only:  :create
#   post 'auth/login', to: 'authentication#authenticate'
#   post 'signup', to: 'users#create'
#   root to: 'v1/doctors#index'

# end

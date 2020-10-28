Rails.application.routes.draw do
  get 'authenticationrails/g'
  get 'authenticationrails/controller'
  get 'authenticationrails/Authentication'
  resources  :users, :doctors

  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'

end

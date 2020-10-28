Rails.application.routes.draw do
  resources  :users, :doctors

  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'

end

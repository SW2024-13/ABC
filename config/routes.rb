Rails.application.routes.draw do
  resources :users, only: [:show,:new, :create, :index]
  root 'top#login'

  get 'top/main'
  post 'top/login'
  get 'top/logout'

end

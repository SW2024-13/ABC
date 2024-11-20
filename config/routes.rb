Rails.application.routes.draw do
  get "order/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users

  get 'top/main'
  post 'top/login'
  get 'top/logout'

  root 'top#main'

end

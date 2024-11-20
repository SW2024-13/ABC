Rails.application.routes.draw do
<<<<<<< HEAD
  get "order/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
=======
  resources :users
>>>>>>> logincontroller

  get 'top/main'
  post 'top/login'
  get 'top/logout'

  root 'top#main'
<<<<<<< HEAD
  
  resources :users
=======
>>>>>>> logincontroller
end

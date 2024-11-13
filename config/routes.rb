Rails.application.routes.draw do
<<<<<<< HEAD
  get "order/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
=======
  resources :users
  resources :tweets
>>>>>>> logincontroller

  get 'top/main'
  post 'top/login'
  get 'top/logout'

  root 'top#main'
  
  resources :likes
end

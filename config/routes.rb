Rails.application.routes.draw do
  resources :users, only: [:show,:new, :create, :index]
  #resources :orders
  resources :orders do
    member do
      get :confirm   
      patch :confirm
    end
  end

  root 'top#login'
  get 'order/index', to: 'order#index', as: 'index'
  #get 'order/confirm/:id', to: 'order#confirm', as: 'confirm_order'

  get 'top/main'
  post 'top/login'
  get 'top/logout'
end

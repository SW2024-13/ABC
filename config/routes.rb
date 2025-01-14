Rails.application.routes.draw do
  resources :users
  resources :users, only: [:show, :new, :create, :index]
  


  resources :orders do
    member do
      get 'confirm'
      post 'cancel'
    end
    collection do
      post 'create'
    end
  end

  resources :menus do
    member do
      get 'confirm'
    end
  end

  root 'top#login'
  get 'order/index', to: 'order#index', as: 'index'
  get 'orders/confirm', to: 'orders#confirm', as: 'confirm'
  get 'top/main'
  post 'top/login'
  get 'top/logout'
end






class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.first  # 必要に応じて適切なユーザーを設定
  end

  def new
    @user = User.new
  end
  
  def create
    u = User.new(uid: params[:user][:uid], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
    if u.save
      redirect_to users_path
    else
      render :new
    end
  end

  
  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end
  
  
  def show
    @user = User.find_by(id: params[:id])

    if @user.nil?
      redirect_to root_path, alert: 'ユーザーが見つかりませんでした。'
      return
    end
    @order1 = Order.find_by(name: '唐揚げ丼') # 適切な条件で取得
    @order2 = Order.find_by(name: 'かつ丼')
    @order3 = Order.find_by(name: 'カレー')
    @order4 = Order.find_by(name: 'オムライス')
    @order5 = Order.find_by(name: 'ピザ')
    @order6 = Order.find_by(name: 'ラーメン')
    @order7 = Order.find_by(name: 'とんかつ定食')
    @order8 = Order.find_by(name: 'うどん')
  end
end



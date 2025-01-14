class OrdersController < ApplicationController
  def index
    #@order = Order.find(36)
    @orders = Order.all
    #@user = User.first # 必要に応じて特定のユーザーを設定
    render "orders/index"
    @orders = Order.where(purchased: true)

  end

  def confirm
    @order = Order.find(params[:id])  # `37` の注文を取得
    @order.update(purchased: true)
    return

  end

  def show
    @order = Order.find(params[:id])
    redirect_to orders_path
  end



  def update
    @order = Order.find(params[:id])

    if @order.update(purchased: true)
      redirect_to orders_path, notice: "購入が確定しました！"
    else
      redirect_to orders_path, alert: "購入に失敗しました。"
    end
  end
  

  
  
  
  def create
    @order = Order.new(order_params)
    @order.user = User.first # ハードコードで最初のユーザーを設定（デバッグ用）
    if @order.save
      redirect_to root_path, notice: '注文が確定されました。'
    else
      render :confirm, alert: '注文の確定に失敗しました。'
    end
  end
  
  
  
  def cancel
    # 指定された注文を取得
    @order = Order.find_by(id: params[:id])

    # 注文が見つからない場合のエラーハンドリング
    if @order.nil?
      redirect_to orders_path, alert: "注文が見つかりません。"
      return
    end

    # purchased を false に更新
    if @order.update(purchased: false)
      redirect_to orders_path, notice: "購入状態をキャンセルしました。"
    else
      redirect_to orders_path, alert: "キャンセルに失敗しました。"
    end
  end



  private
  
  def order_params
    params.require(:order).permit(:name, :price)
  end

end


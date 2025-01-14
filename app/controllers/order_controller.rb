class OrderController < ApplicationController
  def index
    #@orders = Order.all
    #@order = Order.find(params[:id])
    @order = Order.find(37)
  #@order  = Order.new
    @orders = Order.where(purchased: true)
  end
  
  
  
  
  def confirm
    # 商品情報を取得
    @order = Order.find(params[:id])
    
    @order.update(purchased: true)

    redirect_to orders_path, notice: "購入が確定しました！"
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
end





class OrderController < ApplicationController
  def index
    #@orders = Order.all
    @orders = Order.where(purchased: true)
  end
  
  def confirm
    # 商品情報を取得
    @order = Order.find(params[:id])
    
    @order.update(purchased: true)

    redirect_to orders_path, notice: "購入が確定しました！"
  end
end





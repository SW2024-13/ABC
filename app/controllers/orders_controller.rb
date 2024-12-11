class OrdersController < ApplicationController
  def index
    @orders = Order.where(purchased: true)
  end

  def confirm
    @order = Order.find(params[:id])

    if @order.update(purchased: true)
      redirect_to orders_path, notice: "購入が確定しました！"
    else
      redirect_to orders_path, alert: "購入に失敗しました。"
    end
  end
end

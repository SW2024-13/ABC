class OrderController < ApplicationController
  def index
    @orders = Order.all
  end
end

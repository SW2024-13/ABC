# app/controllers/menus_controller.rb
class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def confirm
    @menu = Menu.find(params[:id])
    # 必要に応じて他の処理を追加

    # confirm.html.erbビューをレンダリング
    render :confirm
  end
end
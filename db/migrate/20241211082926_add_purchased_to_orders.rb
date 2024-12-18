class AddPurchasedToOrders < ActiveRecord::Migration[7.2]
  def change
    add_column :orders, :purchased, :boolean
  end
end

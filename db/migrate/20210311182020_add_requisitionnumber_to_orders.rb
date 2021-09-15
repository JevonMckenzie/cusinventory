class AddRequisitionnumberToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :requisitionnumber, :integer
  end
end

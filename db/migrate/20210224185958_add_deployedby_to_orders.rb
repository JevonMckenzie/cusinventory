class AddDeployedbyToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :deployedby, :string
  end
end

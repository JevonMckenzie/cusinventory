class AddCondemnToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :condemn, :string
  end
end

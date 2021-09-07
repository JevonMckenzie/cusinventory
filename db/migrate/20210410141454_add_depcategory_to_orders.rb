class AddDepcategoryToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :depcategory, :string
  end
end

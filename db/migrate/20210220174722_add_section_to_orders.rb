class AddSectionToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :section, :string
  end
end

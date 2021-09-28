class AddAcctWarehouseToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_warehouse, :boolean
  end
end

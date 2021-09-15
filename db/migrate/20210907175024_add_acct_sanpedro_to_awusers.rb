class AddAcctSanpedroToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_sanpedro, :boolean
  end
end

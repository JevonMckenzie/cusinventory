class AddAcctShippingToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_shipping, :boolean
  end
end

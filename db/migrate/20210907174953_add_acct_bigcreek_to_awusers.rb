class AddAcctBigcreekToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_bigcreek, :boolean
  end
end

class AddAcctAccountsToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_accounts, :boolean
  end
end

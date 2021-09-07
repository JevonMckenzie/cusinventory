class AddAcctCusadminToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_cusadmin, :boolean
  end
end

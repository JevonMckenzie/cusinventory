class AddAcctPauditToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_paudit, :boolean
  end
end

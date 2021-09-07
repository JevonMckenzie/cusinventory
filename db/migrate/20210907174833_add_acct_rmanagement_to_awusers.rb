class AddAcctRmanagementToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_rmanagement, :boolean
  end
end

class AddAcctEnforcementToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_enforcement, :boolean
  end
end

class AddAcctAworldadminToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_aworldadmin, :boolean
  end
end

class AddAcctOwalkToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_owalk, :boolean
  end
end

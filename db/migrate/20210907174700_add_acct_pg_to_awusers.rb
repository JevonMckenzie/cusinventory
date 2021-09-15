class AddAcctPgToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :acct_pg, :boolean
  end
end

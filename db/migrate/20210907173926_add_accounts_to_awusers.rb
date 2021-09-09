class AddAccountsToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :accounts, :boolean
  end
end

class AddAsyfxnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :asyfxn_user, :integer
    add_index :users, :asyfxn_user
  end
end

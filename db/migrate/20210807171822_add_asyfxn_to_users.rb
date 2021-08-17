class AddAsyfxnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :asyfxn, :integer
    add_index :users, :asyfxn
  end
end

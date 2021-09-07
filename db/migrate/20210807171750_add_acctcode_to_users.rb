class AddAcctcodeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :acctcode, :integer
    add_index :users, :acctcode
  end
end

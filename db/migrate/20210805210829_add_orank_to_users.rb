class AddOrankToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :orank_id, :integer
    add_index :users, :orank_id
  end
end

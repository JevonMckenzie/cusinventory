class AddCusectionIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cusection_id, :integer
    add_index :users, :cusection_id
  end
end

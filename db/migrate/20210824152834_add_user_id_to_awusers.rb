class AddUserIdToAwusers < ActiveRecord::Migration[5.0]
  def change
     add_column :awusers, :user_id, :integer
    add_index :awusers, :user_id
  end
end

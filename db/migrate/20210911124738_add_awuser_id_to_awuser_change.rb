class AddAwuserIdToAwuserChange < ActiveRecord::Migration[5.0]
  def change
   add_column :awuser_changes, :awuser_id, :integer
    add_index :awuser_changes, :awuser_id
  end
end

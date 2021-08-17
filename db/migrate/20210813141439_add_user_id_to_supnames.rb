class AddUserIdToSupnames < ActiveRecord::Migration[5.0]
  def change
     add_column :supnames, :user_id, :integer
    add_index :supnames, :user_id
  end
end

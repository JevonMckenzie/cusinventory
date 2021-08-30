class AddUsernameToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :username, :string
    add_index :awusers, :username
  end
end

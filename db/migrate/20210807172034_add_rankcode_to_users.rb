class AddRankcodeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rankcode, :integer
    add_index :users, :rankcode
  end
end

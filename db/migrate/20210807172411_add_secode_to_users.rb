class AddSecodeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :secode, :integer
    add_index :users, :secode
  end
end

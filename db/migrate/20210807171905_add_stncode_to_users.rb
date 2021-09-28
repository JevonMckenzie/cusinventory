class AddStncodeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :stncode, :integer
    add_index :users, :stncode
  end
end

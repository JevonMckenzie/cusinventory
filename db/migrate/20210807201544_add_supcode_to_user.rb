class AddSupcodeToUser < ActiveRecord::Migration[5.0]
  def change
      add_column :users, :supcode, :string
    add_index :users, :supcode
  end
end

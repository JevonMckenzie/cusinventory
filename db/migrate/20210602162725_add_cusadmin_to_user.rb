class AddCusadminToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cusadmin, :boolean
  end
end

class AddNetadmin1ToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :netadmin1, :boolean
  end
end

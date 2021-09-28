class AddRmanagementToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :rmanagement, :boolean
  end
end

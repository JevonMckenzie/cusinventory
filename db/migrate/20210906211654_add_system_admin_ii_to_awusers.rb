class AddSystemAdminIiToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :system_adminII, :boolean
  end
end

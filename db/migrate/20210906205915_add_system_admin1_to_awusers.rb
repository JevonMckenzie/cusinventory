class AddSystemAdmin1ToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :system_admin1, :boolean
  end
end

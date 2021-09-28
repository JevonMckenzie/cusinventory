class AddOfficer1ToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :officer1, :boolean
  end
end

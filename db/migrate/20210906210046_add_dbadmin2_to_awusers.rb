class AddDbadmin2ToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :dbadmin2, :boolean
  end
end

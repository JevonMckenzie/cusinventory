class AddAworldadminToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :aworldadmin, :boolean
  end
end

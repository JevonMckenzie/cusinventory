class AddBluecreekToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :bluecreek, :boolean
  end
end

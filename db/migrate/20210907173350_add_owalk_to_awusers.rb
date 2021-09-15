class AddOwalkToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :owalk, :boolean
  end
end

class AddSupNameToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :sup_name, :string
  end
end

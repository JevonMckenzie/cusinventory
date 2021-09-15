class AddShippingToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :shipping, :boolean
  end
end

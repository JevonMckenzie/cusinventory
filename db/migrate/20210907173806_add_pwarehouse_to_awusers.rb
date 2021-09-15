class AddPwarehouseToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :pwarehouse, :boolean
  end
end

class AddSanpedroToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :sanpedro, :boolean
  end
end

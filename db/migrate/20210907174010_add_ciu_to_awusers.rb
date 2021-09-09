class AddCiuToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :ciu, :boolean
  end
end

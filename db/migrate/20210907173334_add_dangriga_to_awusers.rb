class AddDangrigaToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :dangriga, :boolean
  end
end

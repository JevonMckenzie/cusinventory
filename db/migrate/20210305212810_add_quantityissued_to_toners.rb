class AddQuantityissuedToToners < ActiveRecord::Migration[5.0]
  def change
    add_column :toners, :quantityissued, :integer
  end
end

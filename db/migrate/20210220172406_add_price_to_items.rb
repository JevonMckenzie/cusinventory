class AddPriceToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :price, :decimal, :precision => 8, :scale => 2
  end
end

class AddConsumableToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :consumable, :string
  end
end

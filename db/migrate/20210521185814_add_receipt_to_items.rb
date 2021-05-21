class AddReceiptToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :receipt, :decimal
  end
end

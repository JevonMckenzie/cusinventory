class AddSerialToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :serial, :string
  end
end

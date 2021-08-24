class AddIndexToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :order_id, :integer
    add_index :reports, :order_id
  end
end

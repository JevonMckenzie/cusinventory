class AddBorderRotToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :border_rot_imports, :issuing_officer_id, :integer, index: true
    add_foreign_key :border_rot_imports, :users, column: :issuing_officer_id
  end
end

class AddClearanceOfficerToBorderRotImports < ActiveRecord::Migration[5.0]
  def change
    add_column :border_rot_imports, :clearance_officer_id, :integer, index: true
    add_foreign_key :border_rot_imports, :users, column: :clearance_officer_id
  end
end

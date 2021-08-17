class AddDescriptionToCustations < ActiveRecord::Migration[5.0]
  def change
    add_column :custations, :description, :string
  end
end

class AddDescriptionToCusections < ActiveRecord::Migration[5.0]
  def change
    add_column :cusections, :description, :string
  end
end

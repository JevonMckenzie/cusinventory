class AddDescriptionToAsyfxns < ActiveRecord::Migration[5.0]
  def change
    add_column :asyfxns, :description, :string
  end
end

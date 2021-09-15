class AddDescriptionToOranks < ActiveRecord::Migration[5.0]
  def change
    add_column :oranks, :description, :string
  end
end

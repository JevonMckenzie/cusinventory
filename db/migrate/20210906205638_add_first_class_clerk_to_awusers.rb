class AddFirstClassClerkToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :first_class_clerk, :boolean
  end
end

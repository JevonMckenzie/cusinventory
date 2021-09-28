class AddSecondClassClerkToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :second_class_clerk, :boolean
  end
end

class AddFoToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :fo, :boolean
  end
end

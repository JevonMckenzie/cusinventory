class AddDeveloperToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :developer, :boolean
  end
end

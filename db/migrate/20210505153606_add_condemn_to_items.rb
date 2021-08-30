class AddCondemnToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :condemn, :string
  end
end

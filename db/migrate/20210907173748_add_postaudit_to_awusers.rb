class AddPostauditToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :postaudit, :boolean
  end
end

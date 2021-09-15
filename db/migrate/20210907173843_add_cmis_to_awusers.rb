class AddCmisToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :cmis, :boolean
  end
end

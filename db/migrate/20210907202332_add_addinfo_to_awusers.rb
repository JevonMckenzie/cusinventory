class AddAddinfoToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :addinfo, :text
  end
end

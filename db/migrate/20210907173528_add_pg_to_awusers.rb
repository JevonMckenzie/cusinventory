class AddPgToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :pg, :boolean
  end
end

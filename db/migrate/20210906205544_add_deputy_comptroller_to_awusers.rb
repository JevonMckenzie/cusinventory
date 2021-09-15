class AddDeputyComptrollerToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :deputy_comptroller, :boolean
  end
end

class AddAssComptrollerToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :ass_comptroller, :boolean
  end
end

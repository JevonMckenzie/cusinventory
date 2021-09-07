class AddExciseToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :Excise, :boolean
  end
end

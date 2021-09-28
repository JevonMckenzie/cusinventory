class AddTvillageToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :tvillage, :boolean
  end
end

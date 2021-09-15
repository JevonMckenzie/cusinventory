class AddBigCreekToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :big_creek, :boolean
  end
end

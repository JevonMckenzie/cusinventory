class AddBenqueToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :benque, :boolean
  end
end

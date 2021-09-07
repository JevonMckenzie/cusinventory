class AddJalacteToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :jalacte, :boolean
  end
end

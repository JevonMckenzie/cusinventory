class AddCusadministrationToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :cusadministration, :boolean
  end
end

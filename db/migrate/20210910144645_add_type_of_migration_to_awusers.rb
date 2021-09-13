class AddTypeOfMigrationToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :type_of_migration, :string
  end
end

class AddTypeOfMigrationToAwuserChanges < ActiveRecord::Migration[5.0]
  def change
    add_column :awuser_changes, :type_of_migration, :string
  end
end

class AddContactToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :contact, :string
  end
end

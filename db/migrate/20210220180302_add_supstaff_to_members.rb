class AddSupstaffToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :supstaff, :string
  end
end

class AddSectionToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :section, :string
  end
end

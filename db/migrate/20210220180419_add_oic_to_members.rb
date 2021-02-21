class AddOicToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :oic, :string
  end
end

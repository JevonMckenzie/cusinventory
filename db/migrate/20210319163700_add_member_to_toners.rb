class AddMemberToToners < ActiveRecord::Migration[5.0]
  def change
    add_column :toners, :member, :string
  end
end

class AddCmisuserToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cmisuser, :string
  end
end

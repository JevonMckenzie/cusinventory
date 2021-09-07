class AddCodeToSupervisors < ActiveRecord::Migration[5.0]
  def change
    add_column :supervisors, :code, :string
  end
end

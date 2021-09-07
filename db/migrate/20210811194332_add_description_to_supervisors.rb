class AddDescriptionToSupervisors < ActiveRecord::Migration[5.0]
  def change
    add_column :supervisors, :description, :string
  end
end

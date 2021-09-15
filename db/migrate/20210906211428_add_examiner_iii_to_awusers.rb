class AddExaminerIiiToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :examinerIII, :boolean
  end
end

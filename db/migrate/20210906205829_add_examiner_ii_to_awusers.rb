class AddExaminerIiToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :examinerII, :boolean
  end
end

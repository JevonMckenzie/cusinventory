class AddCategoryToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :category, :string
  end
end

class AddSectionToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :section, :string
  end
end

class AddStationToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :station, :string
  end
end

class AddStationnameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :stationname, :string
  end
end

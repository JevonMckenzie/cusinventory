class AddBzeCityHeadquartersToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :bze_city_headquarters, :boolean
  end
end

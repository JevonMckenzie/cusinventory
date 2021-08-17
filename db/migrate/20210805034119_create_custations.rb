class CreateCustations < ActiveRecord::Migration[5.0]
  def change
    create_table :custations, description: :string, primary_key: :stncode do |t|
      t.timestamps
    end
  
  end
end

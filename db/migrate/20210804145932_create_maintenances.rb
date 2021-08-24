class CreateMaintenances < ActiveRecord::Migration[5.0]
  def change
    create_table :maintenances do |t|
      t.boolean :nointernet
      t.boolean :compnopower
      t.boolean :compshutdown
      t.boolean :novideo
      t.boolean :keyboard
      t.boolean :mouse
      t.boolean :printerjam
      t.boolean :printernowork
      t.boolean :scanner
      t.boolean :other
      t.string :explanation
      t.string :location
      t.boolean :office
      t.boolean :asycuda
      t.boolean :slonfreeze
      t.boolean :othersoftware
      t.string :explanationsoft
      t.string :locationsoft
      t.boolean :hardware
      t.boolean :software

      t.timestamps
    end
  end
end

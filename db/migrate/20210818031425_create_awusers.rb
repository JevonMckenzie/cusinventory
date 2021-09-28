class CreateAwusers < ActiveRecord::Migration[5.0]
  def change
    create_table :awusers do |t|

      t.timestamps
    end
  end
end

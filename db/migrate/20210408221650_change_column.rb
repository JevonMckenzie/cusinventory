class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
  	   def up
      change_column :orders, :quantity, :integer
     
    end

    def down
      change_column :orders, :quantity, :strings
     
    end
  end
end

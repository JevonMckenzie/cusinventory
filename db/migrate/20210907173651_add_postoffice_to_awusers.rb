class AddPostofficeToAwusers < ActiveRecord::Migration[5.0]
  def change
    add_column :awusers, :postoffice, :boolean
  end
end

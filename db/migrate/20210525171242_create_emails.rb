class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.boolean :passwordreset
      t.boolean :unblockemail
      t.boolean :newuser
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :reason

      t.timestamps
    end
  end
end

class AddTaxInvoiceToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :receipt, :string
  end
end

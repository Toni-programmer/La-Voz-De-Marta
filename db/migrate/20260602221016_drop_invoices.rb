class DropInvoices < ActiveRecord::Migration[8.1]
  def change
    drop_table :invoices
  end
end

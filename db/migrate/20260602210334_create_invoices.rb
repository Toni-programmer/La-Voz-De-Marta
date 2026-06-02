class CreateInvoices < ActiveRecord::Migration[8.1]
  def change
    create_table :invoices do |t|
      t.references :appointment, null: false, foreign_key: true
      t.decimal :amount
      t.string :status
      t.date :issued_at
      t.date :paid_at

      t.timestamps
    end
  end
end

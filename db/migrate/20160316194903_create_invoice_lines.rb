class CreateInvoiceLines < ActiveRecord::Migration
  def change
    create_table :invoice_lines do |t|
      t.references :invoice_header, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true
      t.integer :quantity
      t.decimal :unit_price

      t.timestamps null: false
    end
  end
end

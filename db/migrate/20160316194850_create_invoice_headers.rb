class CreateInvoiceHeaders < ActiveRecord::Migration
  def change
    create_table :invoice_headers do |t|
      t.references :seller, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.string :comment

      t.timestamps null: false
    end
  end
end

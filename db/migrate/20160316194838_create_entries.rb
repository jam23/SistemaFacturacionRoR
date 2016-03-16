class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :description
      t.references :client, index: true, foreign_key: true
      t.integer :account_number
      t.string :movement_type
      t.decimal :amount
      t.bit :status

      t.timestamps null: false
    end
  end
end

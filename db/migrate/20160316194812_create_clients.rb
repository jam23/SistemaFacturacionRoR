class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :trademark
      t.string :identification
      t.integer :account_number
      t.string :telephone
      t.bit :status

      t.timestamps null: false
    end
  end
end

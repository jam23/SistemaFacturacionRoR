class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :last_name
      t.integer :comission_percent
      t.bit :status
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end

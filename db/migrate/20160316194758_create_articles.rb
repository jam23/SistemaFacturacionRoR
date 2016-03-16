class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :category, index: true, foreign_key: true
      t.string :description
      t.decimal :unit_price
      t.bit :status

      t.timestamps null: false
    end
  end
end

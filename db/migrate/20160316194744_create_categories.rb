class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :description
      t.bit :status

      t.timestamps null: false
    end
  end
end

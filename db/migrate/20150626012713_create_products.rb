class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.integer :discount
      t.text :quick
      t.integer :quantity
      t.text :description
      t.text :information
      t.text :reviews

      t.timestamps null: false
    end
  end
end

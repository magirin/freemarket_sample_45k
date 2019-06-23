class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false, limit: 40,index: true 
      t.integer :price, null: false, limit: 7
      t.string :size, null: false 
      t.string :description, null: false, limit: 1000 
      t.integer :favorite, null: false 
      t.string :prodution_quality, null: false 
      t.integer :shipping_price, null: false 
      t.integer :shipping_way, null: false 
      t.integer :shipping_place, null: false 
      t.integer :shipping_date, null: false 
      t.string :product_status, null: false 
      t.references :user, null: false
      t.references :bland, null: true
      t.references :category, null: false
      t.timestamps
    end
  end
end

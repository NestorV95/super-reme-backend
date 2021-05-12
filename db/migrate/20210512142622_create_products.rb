class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :store_id
      t.string :name
      t.string :description
      t.string :category
      t.string :image
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end

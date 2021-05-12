class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :image
      t.string :name
      t.string :address
      t.string :city
      t.integer :zip
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end

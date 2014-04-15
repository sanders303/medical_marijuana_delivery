class CreateProductOptions < ActiveRecord::Migration
  def change
    create_table :product_options do |t|
      t.integer :product_id
      t.integer :wieght_id
      t.decimal :price

      t.timestamps
    end
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.timestamp :timestamp
      t.string :shipping_address
      t.integer :transaction_id
      t.decimal :transaction_total
      t.references :user, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end

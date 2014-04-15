class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :product_id
      t.string :paper_clip_url
      t.references :product, index: true

      t.timestamps
    end
  end
end

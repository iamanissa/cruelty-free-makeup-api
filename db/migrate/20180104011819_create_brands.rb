class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :url
      t.integer :price_category

      t.timestamps
    end
  end
end

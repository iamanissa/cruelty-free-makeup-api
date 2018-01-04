class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :color_number
      t.string :color_name
      t.text :ingredients
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end

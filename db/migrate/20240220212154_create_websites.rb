class CreateWebsites < ActiveRecord::Migration[7.1]
  def change
    create_table :websites do |t|
      t.string :name
      t.string :type, null: false
      t.string :url
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end

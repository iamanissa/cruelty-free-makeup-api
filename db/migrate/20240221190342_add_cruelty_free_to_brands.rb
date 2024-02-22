class AddCrueltyFreeToBrands < ActiveRecord::Migration[7.1]
  def change
    add_column :brands, :cruelty_free, :boolean, null: false, default: true
    add_column :brands, :vegan, :boolean, null: false, default: false
    add_column :brands, :organic, :boolean, null: false, default: false
    add_column :brands, :leaping_bunny, :boolean, null: false, default: false
    add_column :brands, :peta, :boolean, null: false, default: false
    add_column :brands, :clean_beauty, :boolean, null: false, default: false
    add_column :brands, :choose_cruelty_free, :boolean, null: false, default: false
  end
end

class RemoveUrlFromBrands < ActiveRecord::Migration[7.1]
  def change
    remove_column :brands, :url, :string
  end
end

class AddDrinkCountToBrands < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :drinks_count, :integer
  end
end

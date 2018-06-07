class AddBrandCountToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :brands_count, :integer
  end
end

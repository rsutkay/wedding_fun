class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :category_id
      t.integer :brand_id

      t.timestamps

    end
  end
end

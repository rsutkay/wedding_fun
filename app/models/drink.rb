class Drink < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :brand_id, :presence => true

  validates :category_id, :presence => true

  validates :name, :uniqueness => { :scope => [:brand_id, :category_id] }

  validates :name, :presence => true

end

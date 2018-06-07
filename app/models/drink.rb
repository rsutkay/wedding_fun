class Drink < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:brand_id, :category_id] }

  validates :name, :presence => true

end

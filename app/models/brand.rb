class Brand < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :category_id, :presence => true

  validates :name, :uniqueness => { :scope => [:category_id] }

  validates :name, :presence => true

end

class Brand < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:category_id] }

  validates :name, :presence => true

end

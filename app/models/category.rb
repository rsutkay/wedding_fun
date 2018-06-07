class Category < ApplicationRecord
  # Direct associations

  has_many   :brands,
             :dependent => :destroy

  has_many   :drinks,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :name, :uniqueness => true

  validates :name, :presence => true

end

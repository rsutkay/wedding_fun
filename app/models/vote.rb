class Vote < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :drink_id, :presence => true

  validates :user_id, :presence => true

end

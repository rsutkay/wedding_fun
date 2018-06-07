class Vote < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :drink_id, :presence => true

  validates :user_id, :presence => true

end

class Brand < ApplicationRecord
  # Direct associations

  belongs_to :category,
             :counter_cache => true

  has_many   :drinks,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :category_id, :presence => true

  validates :name, :uniqueness => { :scope => [:category_id] }

  validates :name, :presence => true

end
